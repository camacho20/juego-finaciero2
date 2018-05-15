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
        public string nombre_movimineto { get; set; }
        public double codigo_puc { get; set; }
        public double credito { get; set; }
        public double debito { get; set; }


        public bool registrarCompra_materia_prima_contado_debita(Compra_materia_primaModel obje)
        {

            string sql = "INSERT INTO movimiento (nombre_movimineto, codigo_puc,debito) VALUES('" + obje.nombre_movimineto + "','" + obje.codigo_puc + "','" + obje.debito + "')";
            return conn.EjecutarSql(sql, CommandType.Text);
        }


        public bool registrarCompra_materia_prima_contado_credito(Compra_materia_primaModel obje)
        {

            string sql = "INSERT INTO movimiento (nombre_movimineto, codigo_puc,credito) VALUES('" + obje.nombre_movimineto + "','" + obje.codigo_puc + "','" + obje.credito + "')";
            return conn.EjecutarSql(sql, CommandType.Text);
        }


        public DataTable ConsultarCompra_materia_prima()
        {
            string sql = "SELECT cantidad_compra, forma_pago,valor_compra FROM compra_materia_prima order by idcompra_materia_prima;";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }
        

    }
}