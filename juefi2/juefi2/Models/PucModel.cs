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

        public bool registrarpuc(PucModel obje)
        {

            string sql = "INSERT INTO puc (codigo, descripcion) VALUES('" + obje.codigo + "','" + obje.descrip + "')";
            return conn.EjecutarSql(sql, CommandType.Text);
        }

        public DataTable Consultarpuc()
        {
            string sql = "SELECT pu.idpuc , pu.codigo , pu.descripcion FROM puc pu order by pu.idpuc ;";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }
        public bool eliminapuc(string idpuc)
        {
            string sql = "DELETE FROM puc  where  idpuc='" + idpuc + "';";
            return conn.EjecutarSql(sql, CommandType.Text);
        }

        public bool editarpuc(PucModel edita)
        {
            string sql = "UPDATE puc SET  codigo ='" + edita.codigo + "',descripcion ='" + edita.descrip + "'  WHERE  idpuc='" + edita.idpuc + "';"; 
            return conn.EjecutarSql(sql, CommandType.Text);
        }
        public bool Validarpuc(string descripi)
        {
            string sql = "SELECT pu.idpuc FROM puc pu where pu.descripcion='" + descripi + "';";

            return conn.EjecutarConsulta(sql, CommandType.Text).Rows.Count > 0;
        }


    }
}