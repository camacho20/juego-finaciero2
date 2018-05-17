using juefi2.Models.BD;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace juefi2.Models
{
    public class ParametrizarVariableModel
    {
        private conecMysql conn = new conecMysql();
      
        public double valor_parametro { get; set; }

        public bool insetarvariable(ParametrizarVariableModel obje)
        {

            string sql = "INSERT INTO parametrizacion (valor_parametro) VALUES('" + obje.valor_parametro + "')";
            return conn.EjecutarSql(sql, CommandType.Text);
        }

        public bool actualizarvariable(int id, double valor)
        {

            string sql = "UPDATE parametrizacion SET  valor_parametro ='" + valor + "'   WHERE idparametrizacion='" + id+ "';"; 
            return conn.EjecutarSql(sql, CommandType.Text);
        }


    }
}