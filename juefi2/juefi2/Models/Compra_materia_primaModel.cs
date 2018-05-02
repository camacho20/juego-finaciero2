using juefi2.Models.BD;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace juefi2.Models
{
    public class Compra_materia_primaModel
    {

        private conecMysql conn = new conecMysql();
        public int cantidad { get; set; }
        public string Forma_Pago { get; set; }
        public int Valor { get; set; }


        public bool registrarCompra_materia_prima(Compra_materia_primaModel obje)
        {

            string sql = "INSERT INTO empresa (cantidad_compra, forma_pago,valor_compra) VALUES('" + obje.cantidad + "','" + obje.Forma_Pago + "','" + obje.Valor + "')";
            return conn.EjecutarSql(sql, CommandType.Text);
        }

        public DataTable ConsultarCompra_materia_prima()
        {
            string sql = "SELECT cantidad_compra, forma_pago,valor_compra FROM compra_materia_prima order by idcompra_materia_prima;";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }
    }
}