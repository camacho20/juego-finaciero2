using juefi2.Models.BD;
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

    }
}