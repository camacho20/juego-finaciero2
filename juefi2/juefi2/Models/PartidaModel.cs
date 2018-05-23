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

   public string nombre_partida { get; set; }
        public string numero_empresas { get; set; }
        public  DateTime fecha_inicial { get; set; }
        public DateTime fecha_final { get; set; }

        public bool registrarpartida(PartidaModel obj)
        {
            string inicial = obj.fecha_inicial.Year + "-" + obj.fecha_inicial.Month + "-" + obj.fecha_inicial.Day;
            string final= obj.fecha_final.Year + "-" + obj.fecha_final.Month + "-" + obj.fecha_final.Day;

            string sql = "INSERT INTO partida_especifica (nombre_partida, numero_empresas, fecha_inicial, fecha_fin )  VALUES('" + obj.nombre_partida + "','" + obj.numero_empresas + "','" + inicial + "','" + final + "')";
            return conn.EjecutarSql(sql, CommandType.Text);
        }




    }
}