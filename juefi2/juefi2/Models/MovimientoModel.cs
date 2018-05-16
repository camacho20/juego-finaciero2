using juefi2.Models.BD;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace juefi2.Models
{
    public class MovimientoModel
    {

        private conecMysql conn = new conecMysql();
        public string nombre_movimineto { get; set; }
        public double codigo_puc { get; set; }
        public double credito { get; set; }
        public double debito { get; set; }


        public bool debita(MovimientoModel obje)
        {

            string sql = "INSERT INTO movimiento (nombre_movimineto, codigo_puc,debito) VALUES('" + obje.nombre_movimineto + "','" + obje.codigo_puc + "','" + obje.debito + "')";
            return conn.EjecutarSql(sql, CommandType.Text);
        }


        public bool acredita(MovimientoModel obje)
        {

            string sql = "INSERT INTO movimiento (nombre_movimineto, codigo_puc,credito) VALUES('" + obje.nombre_movimineto + "','" + obje.codigo_puc + "','" + obje.credito + "')";
            return conn.EjecutarSql(sql, CommandType.Text);
        }


        public DataTable mostrarmovimiento()
        {
            string sql = "SELECT idmovimiento, nombre_movimineto,codigo_puc,credito, debito FROM movimiento  order by idmovimiento;";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }
        

    }
}