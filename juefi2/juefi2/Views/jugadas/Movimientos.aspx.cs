using juefi2.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace juefi2.Views.jugadas
{
    public partial class Movimientos : System.Web.UI.Page
    {
        MovimientoController movi = new MovimientoController();
        protected void Page_Load(object sender, EventArgs e)
        {
            tablamovimientos.DataSource = movi.consultarmovimiento();
            tablamovimientos.DataBind();
        }
    }
}