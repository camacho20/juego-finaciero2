using juefi2.Models.BD;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace juefi2.Models
{
    public class PucModel
    {
        private conecMysql conn = new conecMysql();
        public string descrip { get; set; }
        public int codigo { get; set; }
       
        public int idpuc{ get; set; }

        public string valor { get; set; }
        public bool registrarpuc(PucModel obje)
        {

            string sql = "INSERT INTO puc (codigo, descripcion) VALUES('" + obje.codigo + "','" + obje.descrip + "')";
            return conn.EjecutarSql(sql, CommandType.Text);
        }

        public DataTable Consultarpuc()
        {
            string sql = "SELECT idpuc , codigo , descripcion , valor FROM puc order by idpuc ;";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }
        public bool eliminapuc(string idpuc)
        {
            string sql = "DELETE FROM puc  where  idpuc='" + idpuc + "';";
            return conn.EjecutarSql(sql, CommandType.Text);
        }

        public bool editarpuc(PucModel edita)
        {
            string sql = "UPDATE puc SET  codigo ='" + edita.codigo + "',descripcion ='" + edita.descrip + "' ,valor ='" + edita.valor + "'   WHERE  idpuc='" + edita.idpuc + "';"; 
            return conn.EjecutarSql(sql, CommandType.Text);
        }
        public bool Validarpuc(string descripi,int id)
        {
            string sql = "SELECT pu.idpuc FROM puc pu where pu.descripcion='" + descripi + "' OR pu.codigo='" + id + "' ;";

            return conn.EjecutarConsulta(sql, CommandType.Text).Rows.Count > 0;
        }

        public DataTable buscar(string item)
        {
            string sql = " SELECT idpuc, codigo , descripcion, valor  FROM puc WHERE CONCAT(idpuc,codigo,descripcion,valor) LIKE '%" + item + "%';";

            return conn.EjecutarConsulta(sql, CommandType.Text);
        }

        public bool copiarpuc(PucModel obje,int idpartida)
        {

            string sql = "INSERT INTO puc_copia (codigo, descripcion,valor,puc_idpuc,partida_especifica_id_partida_general )   VALUES('" + obje.codigo + "','" + obje.descrip + "','" + obje.valor + "','" + obje.idpuc + "','" + idpartida + "')"; 
            return conn.EjecutarSql(sql, CommandType.Text);
        }



    }
}