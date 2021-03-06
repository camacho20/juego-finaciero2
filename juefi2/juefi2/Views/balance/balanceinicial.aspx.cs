﻿using juefi2.Controllers;
using juefi2.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace juefi2.Views.balance
{
    public partial class balanceinicial : System.Web.UI.Page
    {
        ActivosController activos = new ActivosController();
        ActivosModel acti = new ActivosModel();
        PasivopatrimmonioController pasivos = new PasivopatrimmonioController();
        PasivopatrimonioModel pasi = new PasivopatrimonioModel();
        public DataTable datablaConsulta = new DataTable();
        public DataRow darowConsulta;
        public DataTable datablaConsulta2 = new DataTable();
        public DataRow darowConsulta2;


        protected void Page_Load(object sender, EventArgs e)
        {
            //activos
            ocultartexbox();
            ocultartexboxpasi();
            ocultartexboxpatri();
            cargar_de_nuevo_activos();

            btnCancelar1.Enabled = false;
            btnGuardar1.Enabled = false;

            btnCancelar2.Enabled = false;
            btnGuardar2.Enabled = false;

            btnCancelar3.Enabled = false;
            btnGuardar3.Enabled = false;

            btnCancelar.Enabled = false;
            btnGuardar4.Enabled = false;

            btnCancelar5.Enabled = false;
            btnGuardar5.Enabled = false;

            btnCancelar6.Enabled = false;
            btnGuardar6.Enabled = false;
          

        }

        protected void cargar_de_nuevo_activos()
        {

            datablaConsulta = activos.Consultaractivos();
            if (datablaConsulta.Rows.Count > 0)
            {
                for (int i = 0; i < datablaConsulta.Rows.Count; i++)
                {
                    darowConsulta = datablaConsulta.Rows[i];
                    lblmostrar1.Text = Convert.ToDecimal(darowConsulta["efectivo1"]).ToString("N1");
                    lblmostrar2.Text = Convert.ToDecimal(darowConsulta["cdt"]).ToString("N1");
                    lblmostrar3.Text = Convert.ToDecimal(darowConsulta["titudescuen"]).ToString("N1");
                    lblmostrar4.Text = Convert.ToDecimal(darowConsulta["acciones1"]).ToString("N1");
                    lblmostrar5.Text = Convert.ToDecimal(darowConsulta["comoditi"]).ToString("N1");
                    lblmostrar6.Text = Convert.ToDecimal(darowConsulta["divisa"]).ToString("N1");
                    lblmostrar7.Text = Convert.ToDecimal(darowConsulta["cuentaspor"]).ToString("N1");
                    lblmostrar8.Text = Convert.ToDecimal(darowConsulta["materprima"]).ToString("N1");
                    lblmostrar9.Text = Convert.ToDecimal(darowConsulta["protermina"]).ToString("N1");
                    lbltotal.Text = Convert.ToDecimal(darowConsulta["totaacticorri"]).ToString("N1");

                    lblmostrar10.Text = Convert.ToDecimal(darowConsulta["construcc"]).ToString("N1");
                    lblmostrar11.Text = Convert.ToDecimal(darowConsulta["depreacu1"]).ToString("N1");
                    lblmostrar12.Text = Convert.ToDecimal(darowConsulta["maquiequipo"]).ToString("N1");
                    lblmostrar13.Text = Convert.ToDecimal(darowConsulta["depreacul2"]).ToString("N1");
                    lblmostrar14.Text = Convert.ToDecimal(darowConsulta["muebleequiofi"]).ToString("N1");
                     lblmostrar15.Text = Convert.ToDecimal(darowConsulta["depeacumu3"]).ToString("N1");
                    lblmostrar16.Text = Convert.ToDecimal(darowConsulta["equicomunicomp"]).ToString("N1");
                    lblmostrar17.Text = Convert.ToDecimal(darowConsulta["depreacumu4"]).ToString("N1");
                    lblmostrar18.Text = Convert.ToDecimal(darowConsulta["transpor"]).ToString("N1");
                    lblmostrar19.Text = Convert.ToDecimal(darowConsulta["depreacumu5"]).ToString("N1");
                    lbltotal2.Text = Convert.ToDecimal(darowConsulta["totalproplanta"]).ToString("N1");

                    lblmostrar20.Text = Convert.ToDecimal(darowConsulta["rendimiento"]).ToString("N1");
                    lblmostrar21.Text = Convert.ToDecimal(darowConsulta["intepagadoanti"]).ToString("N1");
                    lblmostrar22.Text = Convert.ToDecimal(darowConsulta["seguanticipado"]).ToString("N1");
                    lblmostrar23.Text = Convert.ToDecimal(darowConsulta["antiimpues"]).ToString("N1");
                    lbltotal3.Text = Convert.ToDecimal(darowConsulta["totalotrosactivos"]).ToString("N1");


                    lbltotaldeltotal.Text = Convert.ToDecimal(darowConsulta["totalactivos"]).ToString("N1");


                }

            }//cerrar activos

            //pasivos
            datablaConsulta2 = pasivos.Consultarpasivo();

            if (datablaConsulta2.Rows.Count > 0)
            {

                for (int i = 0; i < datablaConsulta2.Rows.Count; i++)
                {
                    darowConsulta2 = datablaConsulta2.Rows[i];

                    lblpasivo1.Text = Convert.ToDecimal(darowConsulta2["proveedor"]).ToString("N1");
                    lblpasivo2.Text = Convert.ToDecimal(darowConsulta2["monedamk"]).ToString("N1");
                    lblpasivo3.Text = Convert.ToDecimal(darowConsulta2["monedaf"]).ToString("N1");
                    lblpasivo4.Text = Convert.ToDecimal(darowConsulta2["monedaextran"]).ToString("N1");
                    lblpasivos5.Text = Convert.ToDecimal(darowConsulta2["gastocausa"]).ToString("N1");
                    lblpasivos6.Text = Convert.ToDecimal(darowConsulta2["aporparais"]).ToString("N1");
                    lblpasivos7.Text = Convert.ToDecimal(darowConsulta2["fonpen"]).ToString("N1");
                    lblpasivos8.Text = Convert.ToDecimal(darowConsulta2["segsocial"]).ToString("N1");
                    lblpasivos9.Text = Convert.ToDecimal(darowConsulta2["impurenta"]).ToString("N1");


                    lblpasivos10.Text = Convert.ToDecimal(darowConsulta2["impuinducomer"]).ToString("N1");
                    lblpasivos11.Text = Convert.ToDecimal(darowConsulta2["ivapagar"]).ToString("N1");
                    lblpasivos12.Text = Convert.ToDecimal(darowConsulta2["reteuente"]).ToString("N1");
                    lblpasivos13.Text = Convert.ToDecimal(darowConsulta2["reteica"]).ToString("N1");
                    lblpasivos14.Text = Convert.ToDecimal(darowConsulta2["intercaus"]).ToString("N1");
                    lblpasivos15.Text = Convert.ToDecimal(darowConsulta2["ingrereanti"]).ToString("N1");
                    lblpasivos16.Text = Convert.ToDecimal(darowConsulta2["cesantia"]).ToString("N1");
                    lblpasivos17.Text = Convert.ToDecimal(darowConsulta2["intecesantias"]).ToString("N1");


                    lblpasivos18.Text = Convert.ToDecimal(darowConsulta2["monenaf"]).ToString("N1");
                    lblpasivos19.Text = Convert.ToDecimal(darowConsulta2["monextra"]).ToString("N1");


                    lblpasivos20.Text = Convert.ToDecimal(darowConsulta2["capipagado"]).ToString("N1");
                    lblpasivos21.Text = Convert.ToDecimal(darowConsulta2["reselegal"]).ToString("N1");
                    lblpasivos22.Text = Convert.ToDecimal(darowConsulta2["utireteni"]).ToString("N1");
                  

                }

               

                }

        }






        //activos textbox
        protected void ocultartexbox()
        {
            txtefectivo.Visible = false;
            txtcdt.Visible = false;
            txttitulos_de_descuento.Visible = false;
            txtaccione.Visible = false;
            txtcommodities.Visible = false;
            txtdivisas.Visible = false;
            txtcuentasporcobrar.Visible = false;
            txtmateriaprima.Visible = false;
            txtproducterminado.Visible = false;


            txtconstruccion.Visible = false;
            txtdpre1.Visible = false;
            txtmaequind.Visible = false;
            txtdepre2.Visible = false;
            txtmuequiofi.Visible = false;
            txtdpre3.Visible = false;
            txtequicompu.Visible = false;
            txtdpre4.Visible = false;
            txtvehiequitrans.Visible = false;
            txtdepre5.Visible = false;

            txtrendicobrar.Visible = false;
            txtintepagoantipipado.Visible = false;
            txtsegupagannti.Visible = false;
            txtanticipos.Visible = false;


            lblmostrar1.Visible = true;
            lblmostrar2.Visible = true;
            lblmostrar3.Visible = true;
            lblmostrar4.Visible = true;
            lblmostrar5.Visible = true;
            lblmostrar6.Visible = true;
            lblmostrar7.Visible = true;
            lblmostrar8.Visible = true;
            lblmostrar9.Visible = true;

            lblmostrar10.Visible = true;
            lblmostrar11.Visible = true;
            lblmostrar12.Visible = true;
            lblmostrar13.Visible = true;
            lblmostrar14.Visible = true;
            lblmostrar15.Visible = true;
            lblmostrar16.Visible = true;
            lblmostrar17.Visible = true;
            lblmostrar18.Visible = true;
            lblmostrar19.Visible = true;

            lblmostrar20.Visible = true;
            lblmostrar21.Visible = true;
            lblmostrar22.Visible = true;
            lblmostrar23.Visible = true;

        }

        protected void mostrartextboxcorrientes()
        {

            txtefectivo.Visible = true;
            txtcdt.Visible = true;
            txttitulos_de_descuento.Visible = true;
            txtaccione.Visible = true;
            txtcommodities.Visible = true;
            txtdivisas.Visible = true;
            txtcuentasporcobrar.Visible = true;
            txtmateriaprima.Visible = true;
            txtproducterminado.Visible = true;

            lblmostrar1.Visible = false;
            lblmostrar2.Visible = false;
            lblmostrar3.Visible = false;
            lblmostrar4.Visible = false;
            lblmostrar5.Visible = false;
            lblmostrar6.Visible = false;
            lblmostrar7.Visible = false;
            lblmostrar8.Visible = false;
            lblmostrar9.Visible = false;





        }
        protected void mostrartextboxpropiedad()
        {

            txtconstruccion.Visible = true;
            txtdpre1.Visible = true;
            txtmaequind.Visible = true;
            txtdepre2.Visible = true;
            txtmuequiofi.Visible = true;
            txtdpre3.Visible = true;
            txtequicompu.Visible = true;
            txtdpre4.Visible = true;
            txtvehiequitrans.Visible = true;
            txtdepre5.Visible = true;

            lblmostrar10.Visible = false;
            lblmostrar11.Visible = false;
            lblmostrar12.Visible = false;
            lblmostrar13.Visible = false;
            lblmostrar14.Visible = false;
            lblmostrar15.Visible = false;
            lblmostrar16.Visible = false;
            lblmostrar17.Visible = false;
            lblmostrar18.Visible = false;
            lblmostrar19.Visible = false;



        }
        protected void mostrartextboxotrosactivos()
        {
            txtrendicobrar.Visible = true;
            txtintepagoantipipado.Visible = true;
            txtsegupagannti.Visible = true;
            txtanticipos.Visible = true;

            lblmostrar20.Visible = false;
            lblmostrar21.Visible = false;
            lblmostrar22.Visible = false;
            lblmostrar23.Visible = false;

        }
        //cerrrar activos textbox

        //edicion de activos
        //activos correintes
        protected void btnEditar1_Click(object sender, EventArgs e)
        {

            mostrartextboxcorrientes();


            btnCancelar1.Enabled = true;
            btnGuardar1.Enabled = true;
            btnEditar1.Enabled = false;
        }

        protected void btnCancelar1_Click(object sender, EventArgs e)
        {
            btnEditar1.Enabled = true;
            ocultartexbox();

        }

        protected void btnGuardar1_Click(object sender, EventArgs e)

        {
           
                if (txtefectivo.Text=="" ||  txtcdt.Text=="" ||
                txttitulos_de_descuento.Text==""|| txtaccione.Text==""||
                txtcommodities.Text==""||  txtdivisas.Text==""||
                txtcuentasporcobrar.Text==""|| txtmateriaprima.Text==""||
                txtproducterminado.Text=="" )
                {

                    Response.Write("<script> alert('Debe llenar todos los campos'); </script>");
                    return;
                }

                acti.efectivo = Convert.ToDecimal(txtefectivo.Text);
                acti.cdt = Convert.ToDecimal(txtcdt.Text);
                acti.titulos_descuento = Convert.ToDecimal(txttitulos_de_descuento.Text);
                acti.acciones = Convert.ToDecimal(txtaccione.Text);
                acti.commodities = Convert.ToDecimal(txtcommodities.Text);
                acti.divisas = Convert.ToDecimal(txtdivisas.Text);
                acti.cuentas_por_cobrar = Convert.ToDecimal(txtcuentasporcobrar.Text);
                acti.materia_prima = Convert.ToDecimal(txtmateriaprima.Text);
                acti.prod_terminado = Convert.ToDecimal(txtproducterminado.Text);

                activos.editaracticorrientes(acti);




                btnCancelar1.Enabled = false;
                btnGuardar1.Enabled = false;
              btnEditar1.Enabled = true;
            ocultartexbox();
                cargar_de_nuevo_activos();
            
        }
        //activos plantas

        protected void btnCancelar2_Click(object sender, EventArgs e)
        {

            btnEditar2.Enabled = true;
            ocultartexbox();

        }
        protected void btnEditar2_Click(object sender, EventArgs e)
        {
            mostrartextboxpropiedad();
            btnCancelar2.Enabled = true;
            btnGuardar2.Enabled = true;
            btnEditar2.Enabled = false;
        }

        protected void btnGuardar2_Click(object sender, EventArgs e)
        {
            if (txtconstruccion.Text==""|| txtdpre1.Text==""|| txtmaequind.Text==""||txtdepre2.Text==""||
            txtmuequiofi.Text==""|| txtdpre3.Text==""|| txtequicompu.Text==""||txtdpre4.Text==""||
            txtvehiequitrans.Text==""||txtdepre5.Text=="")
            {

                Response.Write("<script> alert('Debe llenar todos los campos'); </script>");
                return;
            }

            acti.construcciones = Convert.ToDecimal(txtconstruccion.Text);
            acti.depreciacion_acomulada_1 = Convert.ToDecimal(txtdpre1.Text);
            acti.maquinaria_equipo = Convert.ToDecimal(txtmaequind.Text);
            acti.depreciacion_acomulada_2 = Convert.ToDecimal(txtdepre2.Text);
            acti.muebles_equipo_oficina = Convert.ToDecimal(txtmuequiofi.Text);
            acti.depreciacion_acomulada_3 = Convert.ToDecimal(txtdpre3.Text);
            acti.equipos_comunicacion_computo = Convert.ToDecimal(txtequicompu.Text);
            acti.depreciacion_acomulada_4 = Convert.ToDecimal(txtdpre4.Text);
            acti.vehiculo_eq_trasnporte = Convert.ToDecimal(txtvehiequitrans.Text);
            acti.depreciacion_acomulada_5 = Convert.ToDecimal(txtdepre5.Text);


            activos.editaractipropie(acti);




            btnCancelar2.Enabled = false;
            btnGuardar2.Enabled = false;
            btnEditar2.Enabled = true;
            ocultartexbox();
            cargar_de_nuevo_activos();


        }

        //otros activos

        protected void btnCancelar3_Click(object sender, EventArgs e)
        {
            btnEditar3.Enabled = true;
            ocultartexbox();


        }
        protected void btnEditar3_Click(object sender, EventArgs e)
        {
            mostrartextboxotrosactivos();
            btnCancelar3.Enabled = true;
            btnGuardar3.Enabled = true;
            btnEditar3.Enabled = false;
        }

        protected void btnGuardar3_Click(object sender, EventArgs e)
        {

            if (txtrendicobrar.Text==""|| txtintepagoantipipado.Text==""||txtsegupagannti.Text==""||txtanticipos.Text=="")
            {

                Response.Write("<script> alert('Debe llenar todos los campos'); </script>");
                return;
            }

            acti.rendimiento_fcros = Convert.ToDecimal(txtrendicobrar.Text);
            acti.intereses_pagados_anticipado = Convert.ToDecimal(txtintepagoantipipado.Text);
            acti.seguro_pagado_anticipado = Convert.ToDecimal(txtsegupagannti.Text);
            acti.anticipo_impuestos = Convert.ToDecimal(txtanticipos.Text);


            activos.editaractiotros(acti);
            btnCancelar3.Enabled = false;
            btnGuardar3.Enabled = false;
            btnEditar3.Enabled = true;
            ocultartexbox();
            cargar_de_nuevo_activos();

        }



        //pasivos

        protected void ocultartexboxpasi()
        {
            txtproveedor.Visible = false;
            txtmonedanakt.Visible = false;
            txtmonedanaf.Visible = false;
            txtmonextra.Visible = false;
            txtgastosxpagar.Visible = false;
            txtaporparafis.Visible = false;
            txtfonpensiones.Visible = false;
            txtsocialres.Visible = false;
            txtimpusrenta.Visible = false;
            txtinducomer.Visible = false;
            txtiva.Visible = false;
            txtfuporpagar.Visible = false;
            txticapagar.Visible = false;
            txtintercapagar.Visible = false;
            txtinrecianti.Visible = false;
            txtcesantia.Visible = false;
            txtintcesan.Visible = false;
            txtmonnaaf.Visible = false;
            txtmonextran2.Visible = false;


            lblpasivo1.Visible = true;
            lblpasivo2.Visible = true;
            lblpasivo3.Visible = true;
            lblpasivo4.Visible = true;
            lblpasivos5.Visible = true;
            lblpasivos6.Visible = true;
            lblpasivos7.Visible = true;
            lblpasivos8.Visible = true;
            lblpasivos9.Visible = true;


            lblpasivos10.Visible = true;
            lblpasivos11.Visible = true;
            lblpasivos12.Visible = true;
            lblpasivos13.Visible = true;
            lblpasivos14.Visible = true;
            lblpasivos15.Visible = true;
            lblpasivos16.Visible = true;
            lblpasivos17.Visible = true;


            lblpasivos18.Visible = true;
            lblpasivos19.Visible = true;




        }


        protected void mostrartextboxpasivoscorrientes()
        {

            txtproveedor.Visible = true;
            txtmonedanakt.Visible = true;
            txtmonedanaf.Visible = true;
            txtmonextra.Visible = true;
            txtgastosxpagar.Visible = true;
            txtaporparafis.Visible = true;
            txtfonpensiones.Visible = true;
            txtsocialres.Visible = true;
            txtimpusrenta.Visible = true;
            txtinducomer.Visible = true;
            txtiva.Visible = true;
            txtfuporpagar.Visible = true;
            txticapagar.Visible = true;
            txtintercapagar.Visible = true;
            txtinrecianti.Visible = true;
            txtcesantia.Visible = true;
            txtintcesan.Visible = true;

            lblpasivo1.Visible = false;
            lblpasivo2.Visible = false;
            lblpasivo3.Visible = false;
            lblpasivo4.Visible = false;
            lblpasivos5.Visible = false;
            lblpasivos6.Visible = false;
            lblpasivos7.Visible = false;
            lblpasivos8.Visible = false;
            lblpasivos9.Visible = false;


            lblpasivos10.Visible = false;
            lblpasivos11.Visible = false;
            lblpasivos12.Visible = false;
            lblpasivos13.Visible = false;
            lblpasivos14.Visible = false;
            lblpasivos15.Visible = false;
            lblpasivos16.Visible = false;
            lblpasivos17.Visible = false;
            



        }


        protected void mostrartextboxpasivolargoplazo()
        {

            txtmonextran2.Visible = true;
            txtmonnaaf.Visible = true;

            lblmostrar18.Visible = false;
            lblmostrar19.Visible = false;
          

        }


       


        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            btnEditar4.Enabled = true;
            ocultartexboxpasi();

        }

        protected void btnEditar4_Click(object sender, EventArgs e)
        {
            mostrartextboxpasivoscorrientes();
            btnCancelar.Enabled = true;
            btnGuardar4.Enabled = true;
            btnEditar4.Enabled = false;
        }

        protected void btnGuardar4_Click(object sender, EventArgs e)
        {
            if (txtproveedor.Text==""||  txtmonedanakt.Text==""|| txtmonedanaf.Text==""|| txtmonextra.Text==""||txtgastosxpagar.Text==""||
            txtaporparafis.Text==""|| txtfonpensiones.Text==""|| txtsocialres.Text==""||txtimpusrenta.Text==""||txtinducomer.Text==""||
            txtiva.Text==""||txtfuporpagar.Text==""||txticapagar.Text==""||txtintercapagar.Text==""||txtinrecianti.Text==""||
            txtcesantia.Text==""||txtintcesan.Text=="")
            {

                Response.Write("<script> alert('Debe llenar todos los campos'); </script>");
                return;
            }

            pasi.proveedores = Convert.ToDecimal(txtproveedor.Text);
            pasi.moneda_kt = Convert.ToDecimal(txtmonedanakt.Text);
            pasi.moneda_af = Convert.ToDecimal(txtmonedanaf.Text);
            pasi.moneda_extranjera = Convert.ToDecimal(txtmonextra.Text);
            pasi.gastos_causados_pagar = Convert.ToDecimal(txtgastosxpagar.Text);
            pasi.aportes_parafiscales = Convert.ToDecimal(txtaporparafis.Text);
            pasi.fondos_pension = Convert.ToDecimal(txtfonpensiones.Text);
            pasi.seg_social_riesgos = Convert.ToDecimal(txtsocialres.Text);
            pasi.pimpuestos_renta = Convert.ToDecimal(txtimpusrenta.Text);
            pasi.impuesto_industria_comercio = Convert.ToDecimal(txtinducomer.Text);
            pasi.iva_pagar = Convert.ToDecimal(txtiva.Text);
            pasi.retefuente_pagar = Convert.ToDecimal(txtfuporpagar.Text);
            pasi.reteica_pagar = Convert.ToDecimal(txticapagar.Text);
            pasi.intereses_causados_pagar = Convert.ToDecimal(txtintercapagar.Text);
            pasi.ingresos_recibidos_anticipado = Convert.ToDecimal(txtinrecianti.Text);
            pasi.cesantias = Convert.ToDecimal(txtcesantia.Text);
            pasi.intereses_cesantias = Convert.ToDecimal(txtintcesan.Text);

            pasivos.editarpasicorrientes(pasi);





            activos.editaractiotros(acti);
            btnCancelar.Enabled = false;
            btnGuardar4.Enabled = false;
            btnEditar4.Enabled = true;
            ocultartexboxpasi();
            cargar_de_nuevo_activos();
        }
        //largo plazo

        protected void btnCancelar5_Click(object sender, EventArgs e)
        {
            ocultartexboxpasi();
            btnEditar5.Enabled = true;
           
        }

        protected void btnEditar5_Click(object sender, EventArgs e)
        {
            mostrartextboxpasivolargoplazo();
            btnCancelar5.Enabled = true;
            btnGuardar5.Enabled = true;
            btnEditar5.Enabled = false;
        }

        protected void btnGuardar5_Click(object sender, EventArgs e)
        {
            if (txtmonnaaf.Text == "" || txtmonextran2.Text=="")
            {

                Response.Write("<script> alert('Debe llenar todos los campos'); </script>");
                return;
            }

            pasi.moneda_nacional_af = Convert.ToDecimal(txtmonnaaf.Text);
            pasi.modena_extranjera_2 = Convert.ToDecimal(txtmonextran2.Text);

            pasivos.editarpasilargo(pasi);

            btnCancelar5.Enabled = false;
            btnGuardar5.Enabled = false;
            btnEditar5.Enabled = true;
            ocultartexboxpasi();
            cargar_de_nuevo_activos();



        }


        //patrimonio

        protected void ocultartexboxpatri() {

            txtcapipagado.Visible = false;
            txtreselegal.Visible = false;
            txtutiretenidos.Visible = false;


            lblpasivos20.Visible =true;
            lblpasivos21.Visible = true;
            lblpasivos22.Visible = true;

        }

        protected void mostrartextboxpatrimonio() {

            txtcapipagado.Visible = true;
            txtreselegal.Visible = true;
            txtutiretenidos.Visible = true;


            lblpasivos20.Visible = false;
            lblpasivos21.Visible = false;
            lblpasivos22.Visible = false;

        }

        protected void btnCancelar6_Click(object sender, EventArgs e)
        {
            ocultartexboxpatri();
            btnEditar6.Enabled = true;
        }


        protected void btnEditar6_Click(object sender, EventArgs e)
        {
            mostrartextboxpatrimonio();
            btnCancelar6.Enabled = true;
            btnGuardar6.Enabled = true;
            btnEditar6.Enabled = false;

        }

        protected void btnGuardar6_Click(object sender, EventArgs e)
        {
            if (txtcapipagado.Text==""|| txtreselegal.Text=="" || txtutiretenidos.Text=="")
            {

                Response.Write("<script> alert('Debe llenar todos los campos'); </script>");
                return;
            }

            pasi.capital_pagado = Convert.ToDecimal(txtcapipagado.Text);
            pasi.reserva_legal = Convert.ToDecimal(txtreselegal.Text);
            pasi.utilidades_retenidas = Convert.ToDecimal(txtutiretenidos.Text);

            pasivos.editarpatrimonio(pasi);

            btnCancelar6.Enabled = false;
            btnGuardar6.Enabled = false;
            btnEditar6.Enabled = true;
            ocultartexboxpatri();
            cargar_de_nuevo_activos();


        }

      







    }
}