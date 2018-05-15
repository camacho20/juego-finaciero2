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


    }
}