﻿using juefi2.Models.BD;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace juefi2.Models
{
    public class ActivosModel
    {
        private conecMysql conn = new conecMysql();
        public decimal efectivo { get; set; }
        public decimal cdt { get; set; }
        public decimal titulos_descuento { get; set; }
        public decimal acciones { get; set; }
        public decimal commodities { get; set; }

        public decimal divisas { get; set; }
        public decimal cuentas_por_cobrar { get; set; }
        public decimal materia_prima { get; set; }
        public decimal prod_terminado { get; set; }
     


        public decimal construcciones { get; set; }
        public decimal depreciacion_acomulada_1 { get; set; }
        public decimal maquinaria_equipo { get; set; }
        public decimal depreciacion_acomulada_2 { get; set; }
        public decimal muebles_equipo_oficina { get; set; }
        public decimal depreciacion_acomulada_3 { get; set; }
        public decimal equipos_comunicacion_computo { get; set; }
        public decimal depreciacion_acomulada_4 { get; set; }
        public decimal vehiculo_eq_trasnporte { get; set; }
        public decimal depreciacion_acomulada_5 { get; set; }
       

        public decimal rendimiento_fcros { get; set; }
        public decimal intereses_pagados_anticipado { get; set; }
        public decimal seguro_pagado_anticipado { get; set; }
        public decimal anticipo_impuestos { get; set; }
        


        public DataTable Consultaractivos()
        {
            string sql = "SELECT  acti.efectivo as efectivo1, acti.CDT as cdt,acti.titulos_descuento as titudescuen,acti.acciones as acciones1,acti.commodities as comoditi,acti.divisas as divisa, acti.cuentas_por_cobrar as cuentaspor , acti.materia_prima as materprima, acti.prod_terminado as protermina , acti.total_activo_corriente as totaacticorri ,";
            sql = sql + "acti.construcciones as  construcc, acti.depreciacion_acomulada_1  as depreacu1 , acti. maquinaria_equipo as maquiequipo, acti. depreciacion_acomulada_2 as depreacul2 , acti.muebles_equipo_oficina as muebleequiofi, acti.depreciacion_acomulada_3 as depeacumu3, acti.equipos_comunicacion_computo  as equicomunicomp,";
            sql = sql + " acti.depreciacion_acomulada_4 as depreacumu4, acti.vehiculo_eq_trasnporte as transpor, acti.depreciacion_acomulada_5 as depreacumu5, acti.total_prop_planta_equipo as totalproplanta, acti.rendimiento_fcros as rendimiento , acti.intereses_pagados_anticipado as intepagadoanti, acti.seguro_pagado_anticipado as seguanticipado, acti.anticipo_impuestos as antiimpues, acti.total_otros_activos as totalotrosactivos, acti.total_activos as totalactivos FROM activos acti ;";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }

        public bool editaractivoscorrientes(ActivosModel edita)
        {
            string sql = "UPDATE activos SET  efectivo ='" + edita.efectivo + "',CDT ='" + edita.cdt + "' ,titulos_descuento ='" + edita.titulos_descuento + "' , acciones ='" + edita.acciones + "' , commodities ='" + edita.commodities + "', divisas ='" + edita.divisas + "', cuentas_por_cobrar ='" + edita.cuentas_por_cobrar + "', materia_prima ='" + edita.materia_prima + "', prod_terminado ='" + edita.prod_terminado + "'  WHERE idactivos ='1';";
            return conn.EjecutarSql(sql, CommandType.Text);
        }

        public bool editaractivospropiedad(ActivosModel edita)
        {
            string sql = "UPDATE activos SET  construcciones ='" + edita.construcciones + "',depreciacion_acomulada_1 ='" + edita.depreciacion_acomulada_1 + "' ,maquinaria_equipo ='" + edita.maquinaria_equipo + "' , depreciacion_acomulada_2 ='" + edita.depreciacion_acomulada_2 + "' , muebles_equipo_oficina ='" + edita.muebles_equipo_oficina + "', depreciacion_acomulada_3 ='" + edita.depreciacion_acomulada_3 + "', equipos_comunicacion_computo ='" + edita.equipos_comunicacion_computo + "', depreciacion_acomulada_4 ='" + edita.depreciacion_acomulada_4 + "', vehiculo_eq_trasnporte ='" + edita.vehiculo_eq_trasnporte + "', depreciacion_acomulada_5 ='" + edita.depreciacion_acomulada_5 + "'  WHERE idactivos ='1';";
            return conn.EjecutarSql(sql, CommandType.Text);
        }

        public bool editaractivosotros(ActivosModel edita)
        {
            string sql = "UPDATE activos SET  rendimiento_fcros ='" + edita.rendimiento_fcros + "',intereses_pagados_anticipado ='" + edita.intereses_pagados_anticipado + "' ,seguro_pagado_anticipado ='" + edita.seguro_pagado_anticipado + "' , anticipo_impuestos ='" + edita.anticipo_impuestos + "'   WHERE idactivos ='1';";
            return conn.EjecutarSql(sql, CommandType.Text);
        }


    }
}