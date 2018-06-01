using juefi2.Models.BD;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace juefi2.Models
{
    public class ValorPucYReglaModel
    {
        private conecMysql conn = new conecMysql();

        public string variable(int id)
        {
            string sql = "SELECT valor FROM puc where(idpuc='" + id + "');";

            DataTable dt = conn.EjecutarConsulta(sql, CommandType.Text);
            string variable = dt.Rows[0]["valor"].ToString();

            return variable;
        }
        public string variablepuc(int id)
        {
            string sql = "SELECT codigo FROM puc where(idpuc='" + id + "');";

            DataTable dt = conn.EjecutarConsulta(sql, CommandType.Text);
            string variable = dt.Rows[0]["codigo"].ToString();

            return variable;
        }

        public bool actualizarvariable(int id, double valor)
        {

            string sql = "UPDATE puc  SET  valor ='" + valor + "'   WHERE idpuc='" + id + "';";
            return conn.EjecutarSql(sql, CommandType.Text);
        }
        public double valorpucempresa(int id,int idempresa)
        {
            string sql = "SELECT valor FROM puc_copy_final where(codigo='" + id + "' AND  id_empresa='" + idempresa + "' );";

            DataTable dt = conn.EjecutarConsulta(sql, CommandType.Text);
            double variable =Convert.ToDouble( dt.Rows[0]["valor"].ToString());

            return variable;
        }
        public bool editarvalorpucempresa(double valor, int id, int idempresa)
        {
            string sql = "UPDATE puc_copy_final SET  valor='" + valor + "'   WHERE  codigo='" + id + "'  AND  id_empresa='" + idempresa + "'  ;";
            return conn.EjecutarSql(sql, CommandType.Text);
        }

    }
}