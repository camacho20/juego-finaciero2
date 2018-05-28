using juefi2.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace juefi2.Views.jugadas
{
    public partial class HabilitarCompra : System.Web.UI.Page
    {
        ActivarCompraController actit = new ActivarCompraController();
        MovimientoController movi = new MovimientoController();
        protected void Page_Load(object sender, EventArgs e)
        {
            ofertas.DataSource = actit.Consultarofertas();
            ofertas.DataBind();
        }



        
        protected void Guardar_Click(object sender, EventArgs e)
        {
            actit.activarcompra();

            Response.Write("<script> alert('Compra activada'); </script>");
            return;
        }
    }
}