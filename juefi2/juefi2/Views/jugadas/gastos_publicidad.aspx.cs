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
    public partial class gastos_publicidad : System.Web.UI.Page
    {
        ValorPucYReglaController cop = new ValorPucYReglaController();
        MovimientoModel movimiento = new MovimientoModel();
        MovimientoController inversion = new MovimientoController();

        double reteica;
        double monto;
        double rtfuente;
        double disponible;




        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}