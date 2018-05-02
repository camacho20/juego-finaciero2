using juefi2.Models.BD;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace juefi2.Models
{
    public class ProveedoresModel
    {
        private conecMysql conn = new conecMysql();
        public string Nombre_Proveedor { get; set; }
        public string Regimen { get; set; }
        public int Valor { get; set; }


        public bool registrarproveedor(ProveedoresModel obje)
        {

            string sql = "INSERT INTO empresa (nombre_proveedor, tipo_regimen,valor_de_producto) VALUES('" + obje.Nombre_Proveedor + "','" + obje.Regimen + "','" + obje.Valor +  "')";
            return conn.EjecutarSql(sql, CommandType.Text);
        }

        public DataTable Consultarproveedor()
        {
            string sql = "SELECT nombre_proveedor, tipo_regimen,valor_de_producto FROM proveedores order by idproveedores;";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }

      

    }
}