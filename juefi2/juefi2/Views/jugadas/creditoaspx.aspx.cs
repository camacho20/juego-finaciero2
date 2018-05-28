using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace juefi2.Views.jugadas
{
    public partial class creditoaspx : System.Web.UI.Page
    {

        double cuota;
        double interes;
      double amortizacion;
        double saldo;
        private DataTable dt;
        double pocentaje;
        //A = 1-(1+taza)^-plazos
        int p ;
        double b ;
        double A;
        string todo;

        private DataRow row;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
               



            }
        }

        protected void btncalcular_Click(object sender, EventArgs e)
        {

            Listmostrar.Items.Clear();
            pocentaje = double.Parse(txtporcetaje.Text)/100;

            //A = 1-(1+taza)^-plazos
             p = int.Parse(txtMeses.Text) * -1;
            b = (1 + pocentaje);
             A = (1 - Math.Pow(b, p)) / pocentaje;

            //Cuota Fija = Monto / A;
            cuota =Math.Round( double.Parse(txtMonto.Text) / A);

            saldo = double.Parse(txtMonto.Text);




            for (int i=0;i<int.Parse(txtMeses.Text);i++) {
               
                interes =Math.Round( saldo * pocentaje);
                amortizacion =Math.Round( cuota - interes);
                saldo = Math.Round( saldo - amortizacion);
                todo = (i+1) +"   |   " +cuota+"   |   "+interes+"   |   "+amortizacion+"   |   "+saldo;

                Listmostrar.Items.Add(todo);
              



            }
        }
    }
}