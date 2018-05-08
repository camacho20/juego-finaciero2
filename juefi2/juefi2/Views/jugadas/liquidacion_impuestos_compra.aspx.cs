using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace juefi2.Views.jugadas
{
    public partial class liquidacion_impuestos_compra : System.Web.UI.Page
    {
        double valorcompra;
        double iva;
        double reteica;
        double retefuente;
        double reteiva;
        double valorneto;

       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void guardar_Click(object sender, EventArgs e)
        {

            valorcompra = Convert.ToDouble(TextBox1.Text);


              calcularimouestos( valorcompra);





        }

        public void calcularimouestos(double valorcompra) {

            iva = valorcompra * 0.19;

            reteica = (valorcompra * 4) / 1000;


            if (valorcompra>=895212) {
                retefuente = valorcompra * 0.025;
                reteiva = iva * 0.15;

            }


            
            valorneto = ((valorcompra + iva) - reteiva) - retefuente - reteica;
            

            TextBox2.Text = Convert.ToString( iva);
            TextBox3.Text = Convert.ToString(reteica);
            TextBox4.Text = Convert.ToString(retefuente);
            TextBox6.Text = Convert.ToString(reteiva);
            TextBox5.Text = Convert.ToString(valorneto);

        }


    }
}