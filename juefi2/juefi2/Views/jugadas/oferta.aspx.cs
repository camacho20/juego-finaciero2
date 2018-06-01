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
    public partial class oferta : System.Web.UI.Page
    {
        ValorPucYReglaController cop = new ValorPucYReglaController();
        MovimientoModel movimiento = new MovimientoModel();
        MovimientoController compracon = new MovimientoController();
        EmpresaController empr = new EmpresaController();
        ActivarCompraController acti = new ActivarCompraController();
        ActivarCompraModel modelproe = new ActivarCompraModel();

        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnhaceroferta_Click(object sender, EventArgs e)
        {
            movimiento.id = empr.llamaridempresa(int.Parse(Session["id_usuario"].ToString()));

            movimiento.valor = Convert.ToDouble(txtoferta.Text);
            
            compracon.oferta(movimiento);
            txtoferta.Text = "";

        }
    }
}