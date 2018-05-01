using juefi2.Controllers;
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


       
      




    }
}