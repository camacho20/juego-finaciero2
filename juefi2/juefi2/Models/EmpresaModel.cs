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

            string sql = "UPDATE usuario SET  empresa_id_empresa ='" + empresa + "', tiene_empresa ='A' where id_usuario='" + id + "';";
            return conn.EjecutarSql(sql, CommandType.Text);
        }

        public string llamaridempresa(int id)
        {
            string sql = "SELECT empresa_id_empresa FROM usuario where(id_usuario = '" + id + "'); ";

            DataTable dt = conn.EjecutarConsulta(sql, CommandType.Text);
            string idempresa = dt.Rows[0]["empresa_id_empresa"].ToString();

            return idempresa;

        }
        public DataTable llamarempresa(int id)
        {
            string sql = " SELECT nombre_1_usuario , apellido_1_usuario   FROM usuario where(empresa_id_empresa= '" + id + "' );";

           

            return conn.EjecutarConsulta(sql, CommandType.Text); ;

        }

        public DataTable empresa()
        {
            string sql = " SELECT *   FROM empresa ;";



            return conn.EjecutarConsulta(sql, CommandType.Text); ;

        }

    }
}