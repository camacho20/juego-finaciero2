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
        public string id { get; set; }
        public double valor { get; set; }
        public string nombre_cuenta { get; set; }


        public bool debita(MovimientoModel obje)
        {

            string sql = "INSERT INTO movimiento (nombre_movimineto, codigo_puc,nombre_cuenta,debito) VALUES('" + obje.nombre_movimineto + "','" + obje.codigo_puc + "','" + obje.nombre_cuenta + "','" + obje.debito + "')";
            return conn.EjecutarSql(sql, CommandType.Text);
        }


        public bool acredita(MovimientoModel obje)
        {

            string sql = "INSERT INTO movimiento (nombre_movimineto, codigo_puc, nombre_cuenta,credito) VALUES('" + obje.nombre_movimineto + "','" + obje.codigo_puc + "','" + obje.nombre_cuenta + "','" + obje.credito + "')";
            return conn.EjecutarSql(sql, CommandType.Text);
        }


        public DataTable mostrarmovimiento()
        {
            string sql = "SELECT idmovimiento, nombre_movimineto,codigo_puc,nombre_cuenta,credito, debito FROM movimiento  order by idmovimiento;";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }

        public bool actulizaroferta(MovimientoModel obje)
        {

            string sql = "INSERT INTO oferta_materia_prima (cantidad_oferta, empresa_id_empresa,oferto,Activarcompra) VALUES('" + obje.valor + "','" + obje.id + "','SI','Inactivo')";
            return conn.EjecutarSql(sql, CommandType.Text);
        }
    }
}