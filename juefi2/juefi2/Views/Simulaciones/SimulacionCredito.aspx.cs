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
      public  int meses;

        double cuota;
        double auxi1;
        double auxi2;
        double mvs ;
        double saldo;


        protected void Page_Load(object sender, EventArgs e)
        {
            auxi1 = 1 + 0.3102;
            auxi2 = 1 / 12;
            mvs =( Math.Pow(auxi1, auxi2)) - 1;

        }

        protected void guardar_Click(object sender, EventArgs e)
        {
           
            meses= int.Parse(Droptiempodecredito.SelectedItem.Text);

            monto = Convert.ToDouble(txtMonto.Text);
          
           
            llenata(monto, meses);

           
           
        }

        protected void  llenata(double monto, int meses) {


            cuota = (mvs*monto)/1-(Math.Pow(1+mvs,-meses));


            lblprueba.Text = Convert.ToString(cuota);
            Label1.Text= Convert.ToString(mvs);


        }

        }

        
    }
