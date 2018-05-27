using juefi2.Models.BD;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace juefi2.Models
{
    public class ReglaModel
    {

        private conecMysql conn = new conecMysql();
        public string descrip { get; set; }
        public int valorminimo { get; set; }
        public int valormaximo { get; set; }
        public int idregla { get; set; }
        public string tiporegla { get; set; }
        public int idusuario { get; set; }

        public bool registraregla(ReglaModel obje)
        {

            string sql = "INSERT INTO reglas (descripcion_regla, valor_minimo, valor_maximo, tipo_regla, usuario_id_usuario) VALUES('" + obje.descrip + "','" + obje.valorminimo + "','" + obje.valormaximo + "','" + obje.tiporegla + "','" + obje.idusuario + "')";
            return conn.EjecutarSql(sql, CommandType.Text);
        }


        public DataTable Consultarregla()
        {
            string sql = "SELECT re.id_regla , re.descripcion_regla , re.valor_minimo, re.valor_maximo, re.tipo_regla  FROM reglas re order by re.id_regla;";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }


        public bool eliminaregla(string idregla)
        {
            string sql = "DELETE FROM reglas  where  id_regla='" + idregla + "';";
            return conn.EjecutarSql(sql, CommandType.Text);
        }
        public bool editarregla(ReglaModel edita)
        {
            string sql = "UPDATE reglas SET  descripcion_regla ='" + edita.descrip + "',valor_minimo ='" + edita.valorminimo + "' ,valor_maximo ='" + edita.valormaximo + "' , tipo_regla ='" + edita.tiporegla + "'   WHERE id_regla='" + idregla + "';";
            return conn.EjecutarSql(sql, CommandType.Text);
        }

        public bool Validarregla(string descripi)
        {
            string sql = "SELECT re.id_regla FROM reglas re where re.descripcion_regla='" + descripi + "';";

            return conn.EjecutarConsulta(sql, CommandType.Text).Rows.Count > 0;
        }
        public DataTable buscarregla(string item)
        {
            string sql = " SELECT id_regla,descripcion_regla,valor_minimo,valor_maximo,tipo_regla FROM reglas WHERE CONCAT(id_regla,descripcion_regla,valor_minimo,valor_maximo,tipo_regla) LIKE '%" + item + "%';";

            return conn.EjecutarConsulta(sql, CommandType.Text);
        }

    }
}