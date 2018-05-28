﻿using juefi2.Models.BD;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace juefi2.Models
{
    public class ActivarCompraModel
    {
        private conecMysql conn = new conecMysql();

        public DataTable ofertasdecompra()
        {

            string sql = "SELECT empresa_id_empresa, cantidad_oferta  FROM  oferta_materia_prima  where(  oferto='SI');";


            return conn.EjecutarConsulta(sql, CommandType.Text);
        }

        public DataTable promedio_oferta() {

            string sql = "SELECT avg(cantidad_oferta) FROM oferta_materia_prima;";
            //string ofert = dtt.Rows[0]["avg(cantidad_oferta)"].ToString();
            return conn.EjecutarConsulta(sql, CommandType.Text);

        }

        public string valor_año(int id)
        {
            string sql = "SELECT valor_parametro FROM parametrizacion_año where(idpuc='" + id + "');";

            DataTable dt = conn.EjecutarConsulta(sql, CommandType.Text);
            string variable = dt.Rows[0]["valor_parametro"].ToString();

            return variable;
        }

        public string valor_periodo(int id)
        {
            string sql = "SELECT valor_parametro FROM parametrizacion_periodo where(idpuc='" + id + "');";

            DataTable dt = conn.EjecutarConsulta(sql, CommandType.Text);
            string variable = dt.Rows[0]["valor_parametro"].ToString();

            return variable;
        }
        public bool activarcompra()
        {

            string sql = "UPDATE oferta_materia_prima SET Activarcompra='Activa' where  oferto ='SI';";
            return conn.EjecutarSql(sql, CommandType.Text);
        }





    }
}