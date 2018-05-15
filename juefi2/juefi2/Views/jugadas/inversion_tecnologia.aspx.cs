using juefi2.Controllers;
using juefi2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace juefi2.Views.jugadas
{
    public partial class inversion_tecnologia : System.Web.UI.Page
    {
        MovimientoController cop = new MovimientoController();
        MovimientoModel com = new MovimientoModel();
        double reteica;
        double monto;
        double rtfuente;
        double disponible;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void guardar_Click(object sender, EventArgs e)
        {
            monto = Convert.ToDouble(txtMonto.Text);
            calcular(monto);
        }


        protected void calcular(double monto) {

        
           

        }

        
    }
}