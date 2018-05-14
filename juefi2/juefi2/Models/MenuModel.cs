using juefi2.Models.BD;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace juefi2.Models
{
    public class MenuModel
    {
        private conecMysql conn = new conecMysql();

        public DataTable consultarMenu(string idusuario)
        {
            string sql = @"SELECT  *
                        FROM usuario rous
                       INNER JOIN rol ro ON rous.id_usuario = ";
            sql += idusuario + @" AND rous.rol_id_rol= ro.id_rol
                        INNER JOIN permisos meus ON meus.rol_id_rol = ro.id_rol
                        INNER JOIN menu sume ON meus.menu_idmenu = sume.idmenu
                        ORDER BY sume.item; ";

            return conn.EjecutarConsulta(sql, CommandType.Text);
        }

        public int cosultarPKPersona(int idusuario)
        {
            string sql = "SELECT  usu.id_usuario FROM usuario usu where usu.id_usuario='" + idusuario + "'; ";
            return Int32.Parse(conn.EjecutarConsulta(sql, CommandType.Text).Rows[0]["id_usuario"].ToString());
        }

    }
}