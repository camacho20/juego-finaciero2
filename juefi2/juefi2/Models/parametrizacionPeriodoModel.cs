﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace juefi2.Models.BD
{
    public class parametrizacionPeriodoModel
    {

        private conecMysql conn = new conecMysql();

        public double valor_parametro { get; set; }

        public bool insetarvariable(ParametrizarVariableModel obje)
        {

            string sql = "INSERT INTO parametrizacion_periodo (valor_parametro) VALUES('" + obje.valor_parametro + "')";
            return conn.EjecutarSql(sql, CommandType.Text);
        }

        public bool actualizarvariable(int id, double valor)
        {

            string sql = "UPDATE parametrizacion_periodo SET  valor_parametro ='" + valor + "'   WHERE idparametrizacion='" + id + "';";
            return conn.EjecutarSql(sql, CommandType.Text);
        }

        public string variableperiodo(int id)
        {
            string sql = "SELECT valor_parametro FROM parametrizacion_periodo where(idparametrizacion='" + id + "');";

            DataTable dt = conn.EjecutarConsulta(sql, CommandType.Text);
            string variable = dt.Rows[0]["valor_parametro"].ToString();

            return variable;
        }
    }
}