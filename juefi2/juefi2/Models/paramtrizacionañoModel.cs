using juefi2.Models.BD;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace juefi2.Models
{
    public class paramtrizacionañoModel
    {
        private conecMysql conn = new conecMysql();
        public string variableaño(int id)
        {
            string sql = "SELECT valor_parametro FROM parametrizacion_año where(idParametrizacion_año='" + id + "');";

            DataTable dt = conn.EjecutarConsulta(sql, CommandType.Text);
            string variable = dt.Rows[0]["valor_parametro"].ToString();

            return variable;
        }
    }
}