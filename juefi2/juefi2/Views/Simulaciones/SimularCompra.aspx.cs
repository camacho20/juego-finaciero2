using juefi2.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace juefi2.Views.Simulaciones
{
    public partial class SimularCompra : System.Web.UI.Page
    {
        CompraMateriaPrimaController cop = new CompraMateriaPrimaController();
        double iva ;
        double ica;
        double retefuente;
        double descuento;
        double valor_total;
        double monto;

        protected void Page_Load(object sender, EventArgs e)
        {
            txtIva.Enabled = false;
            txtIca.Enabled = false;
            txtFuente.Enabled = false;
            txtTotal.Enabled = false;
           
        }

        protected void Guardar_Click(object sender, EventArgs e)
        {
            monto = Convert.ToDouble(txtcantidad.Text) ;

            comprar( monto);

        }

        

        protected void comprar(double monto) {
            iva =monto* Convert.ToDouble(cop.variable(40));
            ica = monto * Convert.ToDouble(cop.variable(42));

            if (monto>895212)
            {
                retefuente = monto * Convert.ToDouble(cop.variable(41));


            }


           descuento = monto*Convert.ToDouble(cop.variable(60));

            valor_total =(( (monto + iva) - ica) - retefuente) - descuento;
            txtIva.Text =Convert.ToString(iva);
            txtIca.Text= Convert.ToString(ica);
            txtFuente.Text= Convert.ToString(retefuente);
            txtTotal.Text= Convert.ToString(valor_total);


        }

    }
}