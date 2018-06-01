using juefi2.Models.BD;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace juefi2.Models
{
    public class EmpresaModel
    {
        private conecMysql conn = new conecMysql();

        public int id_empresa { get; set; }
        public string nombre_de_empresa { get; set; }

        public int numero_integrantes_empresa { get; set; }
       



        public string politicas_empresa { get; set; }

        public DataTable Consultarnombreusu()
        {

            string sql = "SELECT id_usuario, nombre_1_usuario , apellido_1_usuario , tiene_empresa FROM usuario where(rol_id_rol=3 AND tiene_empresa='I');";
           
           
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }

        public bool registrarempresa(EmpresaModel obje)
        {

            string sql = "INSERT INTO empresa (id_empresa, nombre_empresa,numero_integrantes_empresa,politicas_empresa) VALUES('" + obje.id_empresa + "','" + obje.nombre_de_empresa + "','" + obje.numero_integrantes_empresa + "','" + obje.politicas_empresa + "')";
            return conn.EjecutarSql(sql, CommandType.Text);
        }

        public bool registrarempresausuario(int id,int empresa)
        {

            string sql = "UPDATE usuario SET  empresa_id_empresa ='" + empresa + "' , tiene_empresa ='A' WHERE id_usuario=" + id + ";";
            return conn.EjecutarSql(sql, CommandType.Text);
        }

        public string llamaridempresa(int id)
        {
            string sql = "SELECT empresa_id_empresa FROM usuario WHERE (id_usuario = '" + id + "'); ";

            DataTable dt = conn.EjecutarConsulta(sql, CommandType.Text);
            string idempresa = dt.Rows[0]["empresa_id_empresa"].ToString();

            return idempresa;

        }
        public DataTable llamarempresausuario(int id)
        {
            string sql = " SELECT nombre_1_usuario , apellido_1_usuario   FROM usuario where(empresa_id_empresa= '" + id + "' );";

           

            return conn.EjecutarConsulta(sql, CommandType.Text); ;

        }

        public DataTable empresa()
        {
            string sql = " SELECT *   FROM empresa ;";



            return conn.EjecutarConsulta(sql, CommandType.Text); ;

        }

        public string llamarnombreempresa(int idempresa)
        {
            string sql = "SELECT nombre_empresa FROM empresa where(id_empresa = '" + idempresa + "'); ";

            DataTable dt = conn.EjecutarConsulta(sql, CommandType.Text);
            string nombreempresa = dt.Rows[0]["nombre_empresa"].ToString();

            return nombreempresa;

        }

        public int nuevosusuarios(string nombre, string apellido)
        {
            string sql = "SELECT id_usuario FROM usuario where(nombre_1_usuario = '" + nombre + "' AND apellido_1_usuario = '" + apellido + "'   ); ";

            DataTable dt = conn.EjecutarConsulta(sql, CommandType.Text);
            int idusuario =int.Parse( dt.Rows[0]["id_usuario"].ToString());

            return idusuario;

        }

        public bool registraridpartida(int id,string  nomempresa)
        {

            string sql = "UPDATE empresa SET partida_especifica_id_partida_general='" + id + "' where  nombre_empresa='" + nomempresa + "';";
            return conn.EjecutarSql(sql, CommandType.Text);
        }
        public string idpartidaempresa(int nombre)
        {
            string sql = "SELECT partida_especifica_id_partida_general FROM empresa WHERE id_empresa  = '" + nombre + "'; ";

            DataTable dt = conn.EjecutarConsulta(sql, CommandType.Text);
            string idpartidas = dt.Rows[0]["partida_especifica_id_partida_general"].ToString();

            return idpartidas;

        }

        public DataTable pucfinalempresa(int idempresa)
        {
            string sql = " SELECT  codigo,descripcion, valor FROM  puc_copy_final  where  id_empresa='" + idempresa + "'    ;";
             return conn.EjecutarConsulta(sql, CommandType.Text); ;

        }

    }
}