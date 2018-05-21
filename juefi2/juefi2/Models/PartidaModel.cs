using juefi2.Models.BD;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace juefi2.Models
{
    public class PartidaModel
    {
        private conecMysql conn = new conecMysql();

   public   int  id_partida_general { get; set; }
        public string numero_empresas { get; set; }
        public  DateTime fecha_inicial { get; set; }
        public DateTime fecha_final { get; set; }

        public bool registrarpartida(PartidaModel obj)
        {

            string sql = "INSERT INTO partida_especifica (id_partida_general, numero_empresas, fecha_inicial, fecha_final )  VALUES('" + obj.id_partida_general + "','" + obj.numero_empresas + "','" + obj.fecha_inicial + "','" + obj.fecha_final + "')";
            return conn.EjecutarSql(sql, CommandType.Text);
        }




    }
}