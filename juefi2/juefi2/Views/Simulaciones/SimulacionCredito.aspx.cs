using juefi2.Controllers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace juefi2.Views.Simulaciones
{
    public partial class SimulacionCredito : System.Web.UI.Page
    {
   CreditosController credito = new CreditosController();
       public  double monto;
      public  double meses;

        double cuota;
        double amortizacion2;
        double intereses;
        double mvs = Math.Pow((1 + 0.3102), (1 / 12)) - 1;
        double saldo;


        protected void Page_Load(object sender, EventArgs e)
        {
            
            

        }

        protected void guardar_Click(object sender, EventArgs e)
        {
           
            meses= int.Parse(Droptiempodecredito.SelectedItem.Text);

            monto = Convert.ToDouble(txtMonto.Text);
          
           
            llenata(monto, meses);

           
           
        }

        protected void  llenata(double monto, double meses) {

           


            lblcuota.Text = Convert.ToString(cuota);
               

               

            }

        }

        
    }
