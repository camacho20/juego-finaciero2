using juefi2.Models.BD;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace juefi2.Models
{
    public class PasivopatrimonioModel
    {

        private conecMysql conn = new conecMysql();


        public DataTable Consultaractivos()
        {
            string sql = "SELECT * FROM pasivos;";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }




    }
}