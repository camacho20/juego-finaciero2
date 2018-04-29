using juefi2.Controllers;
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
        public DataTable datablaConsulta = new DataTable();
        public DataRow darowConsulta;
        protected void Page_Load(object sender, EventArgs e)
        {
            //activos

            inhabilitartexbox();
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
                    txtefectivo.Text = Convert.ToDecimal(darowConsulta["efectivo1"]).ToString("N1");
                    txtcdt.Text = Convert.ToDecimal(darowConsulta["cdt"]).ToString("N1");
                    txttitulos_de_descuento.Text = Convert.ToDecimal(darowConsulta["titudescuen"]).ToString("N1");
                    txtaccione.Text = Convert.ToDecimal(darowConsulta["acciones1"]).ToString("N1");
                    txtcommodities.Text = Convert.ToDecimal(darowConsulta["comoditi"]).ToString("N1");
                    txtdivisas.Text = Convert.ToDecimal(darowConsulta["divisa"]).ToString("N1");
                    txtcuentasporcobrar.Text = Convert.ToDecimal(darowConsulta["cuentaspor"]).ToString("N1");
                    txtmateriaprima.Text = Convert.ToDecimal(darowConsulta["materprima"]).ToString("N1");
                    txtproducterminado.Text = Convert.ToDecimal(darowConsulta["protermina"]).ToString("N1");
                    lbltotal.Text = Convert.ToDecimal(darowConsulta["totaacticorri"]).ToString("N1");

                    txtconstruccion.Text = Convert.ToDecimal(darowConsulta["construcc"]).ToString("N1");
                    txtdpre1.Text = Convert.ToDecimal(darowConsulta["depreacu1"]).ToString("N1");
                    txtmaequind.Text = Convert.ToDecimal(darowConsulta["maquiequipo"]).ToString("N1");
                    txtdepre2.Text = Convert.ToDecimal(darowConsulta["depreacul2"]).ToString("N1");
                    txtmuequiofi.Text = Convert.ToDecimal(darowConsulta["muebleequiofi"]).ToString("N1");
                    txtdpre3.Text = Convert.ToDecimal(darowConsulta["depeacumu3"]).ToString("N1");
                    txtequicompu.Text = Convert.ToDecimal(darowConsulta["equicomunicomp"]).ToString("N1");
                    txtdpre4.Text = Convert.ToDecimal(darowConsulta["depreacumu4"]).ToString("N1");
                    txtvehiequitrans.Text = Convert.ToDecimal(darowConsulta["transpor"]).ToString("N1");
                    txtdepre5.Text = Convert.ToDecimal(darowConsulta["depreacumu5"]).ToString("N1");
                    lbltotal2.Text = Convert.ToDecimal(darowConsulta["totalproplanta"]).ToString("N1");

                    txtrendicobrar.Text = Convert.ToDecimal(darowConsulta["rendimiento"]).ToString("N1");
                    txtintepagoantipipado.Text = Convert.ToDecimal(darowConsulta["intepagadoanti"]).ToString("N1");
                    txtsegupagannti.Text = Convert.ToDecimal(darowConsulta["seguanticipado"]).ToString("N1");
                    txtanticipos.Text = Convert.ToDecimal(darowConsulta["antiimpues"]).ToString("N1");
                    lbltotal3.Text = Convert.ToDecimal(darowConsulta["totalotrosactivos"]).ToString("N1");


                    lbltotaldeltotal.Text = Convert.ToDecimal(darowConsulta["totalactivos"]).ToString("N1");


                }

            }//cerrar activos



        }






        //activos textbox
        protected void inhabilitartexbox()
        {
            txtefectivo.ReadOnly = true;
            txtcdt.ReadOnly = true;
            txttitulos_de_descuento.ReadOnly = true;
            txtaccione.ReadOnly = true;
            txtcommodities.ReadOnly = true;
            txtdivisas.ReadOnly = true;
            txtcuentasporcobrar.ReadOnly = true;
            txtmateriaprima.ReadOnly = true;
            txtproducterminado.ReadOnly = true;


            txtconstruccion.ReadOnly = true;
            txtdpre1.ReadOnly = true;
            txtmaequind.ReadOnly = true;
            txtdepre2.ReadOnly = true;
            txtmuequiofi.ReadOnly = true;
            txtdpre3.ReadOnly = true;
            txtequicompu.ReadOnly = true;
            txtdpre4.ReadOnly = true;
            txtvehiequitrans.ReadOnly = true;
            txtdepre5.ReadOnly = true;

            txtrendicobrar.ReadOnly = true;
            txtintepagoantipipado.ReadOnly = true;
            txtsegupagannti.ReadOnly = true;
            txtanticipos.ReadOnly = true;







        }

        protected void habilitartextboxcorrientes()
        {

            txtefectivo.ReadOnly = false;
            txtcdt.ReadOnly = false;
            txttitulos_de_descuento.ReadOnly = false;
            txtaccione.ReadOnly = false;
            txtcommodities.ReadOnly = false;
            txtdivisas.ReadOnly = false;
            txtcuentasporcobrar.ReadOnly = false;
            txtmateriaprima.ReadOnly = false;
            txtproducterminado.ReadOnly = false;
        }
        protected void habilitartextboxpropiedad()
        {

            txtconstruccion.ReadOnly = false;
            txtdpre1.ReadOnly = false;
            txtmaequind.ReadOnly = false;
            txtdepre2.ReadOnly = false;
            txtmuequiofi.ReadOnly = false;
            txtdpre3.ReadOnly = false;
            txtequicompu.ReadOnly = false;
            txtdpre4.ReadOnly = false;
            txtvehiequitrans.ReadOnly = false;
            txtdepre5.ReadOnly = false;
        }
        protected void habilitartextboxotrosactivos()
        {
            txtrendicobrar.ReadOnly = false;
            txtintepagoantipipado.ReadOnly = false;
            txtsegupagannti.ReadOnly = false;
            txtanticipos.ReadOnly = false;
        }
        //cerrrar activos textbox

        //edicion de activos
        //activos correintes
        protected void btnEditar1_Click(object sender, EventArgs e)
        {
            habilitartextboxcorrientes();
            btnCancelar1.Enabled = true;
            btnGuardar1.Enabled = true;
            btnEditar1.Enabled = false;
        }

        protected void btnCancelar1_Click(object sender, EventArgs e)
        {
            btnEditar1.Enabled = true;
            inhabilitartexbox();

        }

        protected void btnGuardar1_Click(object sender, EventArgs e)
        {
            btnCancelar1.Enabled = false;
            btnGuardar1.Enabled = false;
            btnEditar1.Enabled = true;
            inhabilitartexbox();
            cargar_de_nuevo_activos();
        }




        //activos plantas
        //otros activos



    }
}