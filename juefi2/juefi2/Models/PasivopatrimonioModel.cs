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
        public decimal proveedores { get; set; }
        public decimal moneda_kt { get; set; }
        public decimal moneda_af { get; set; }
        public decimal moneda_extranjera { get; set; }
        public decimal gastos_causados_pagar { get; set; }

        public decimal aportes_parafiscales { get; set; }
        public decimal fondos_pension { get; set; }
        public decimal seg_social_riesgos { get; set; }
        public decimal pimpuestos_renta { get; set; }



        public decimal impuesto_industria_comercio { get; set; }
        public decimal iva_pagar { get; set; }
        public decimal retefuente_pagar { get; set; }
        public decimal reteica_pagar { get; set; }
        public decimal intereses_causados_pagar { get; set; }
        public decimal ingresos_recibidos_anticipado { get; set; }
        public decimal cesantias { get; set; }
        public decimal intereses_cesantias { get; set; }
      
        public decimal moneda_nacional_af { get; set; }
        public decimal modena_extranjera { get; set; }
       

        //patrimonio
        public decimal capital_pagado { get; set; }
        public decimal reserva_legal { get; set; }
        public decimal utilidades_retenidas { get; set; }


        public DataTable Consultaractivos()
        {
            string sql = "SELECT pasi.proveedores as proveedor, pasi.moneda_kt as monedamk, pasi.moneda_af as monedaf, pasi.moneda_extranjera as monedaextran, pasi.gastos_causados_pagar as gastocausa, pasi.aportes_parafiscales  as aporparais, pasi.fondos_pension  as fonpen, pasi.seg_social_riesgos as segsocial, pasi.impuestos_renta as impurenta, ";
            sql = sql + "pasi.impuesto_industria_comercio as impuinducomer, pasi.iva_pagar as ivapagar, pasi.retefuente_pagar as reteuente, pasi.reteica_pagar   as reteica, pasi.intereses_causados_pagar as intercaus, pasi.ingresos_recibidos_anticipado as ingrereanti, pasi.cesantias as cesantia, pasi.intereses_cesantias as intecesantias, pasi. total_pasivo_corriente as pasico, pasi.moneda_nacional_af as monenaf,   ";
            sql = sql + "pasi.modena_extranjera as monextra, pasi.total_pasivo_largo_plazo  as totapasilargo, pasi.total_pasivos as totalpasivo, pasi.capital_pagado   as capipagado, pasi.reserva_legal as reselegal, pasi.utilidades_retenidas as utireteni, pasi.total_patrimonio as totalpatri  FROM pasivos pasi ";

            return conn.EjecutarConsulta(sql, CommandType.Text);
        }




    }
}