using juefi2.Models.BD;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace juefi2.Models
{
    public class CreditoModel
    {

        private conecMysql conn = new conecMysql();
        public int monto { get; set; }
        public string tiempo { get; set; }
        public int cuota { get; set; }


        public bool registrarCredito(CreditoModel obje)
        {

            string sql = "INSERT INTO empresa (monto_credito, tiempo_credito,cuota_mensual) VALUES('" + obje.monto + "','" + obje.tiempo + "','" + obje.cuota + "')";
            return conn.EjecutarSql(sql, CommandType.Text);
        }

        public DataTable ConsultarCredito()
        {
            string sql = "SELECT monto_credito, tiempo_credito,cuota_mensual FROM credito order by idcredito;";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }
    }
}