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
    public partial class compra_materia_prima : System.Web.UI.Page
    {
        ValorPucYReglaController cop =new ValorPucYReglaController();
        MovimientoModel movimiento = new MovimientoModel();
        MovimientoController compracon = new MovimientoController();
        EmpresaController empr = new EmpresaController();
        double iva;
        double ica;
        double retefuente;
        double descuento;
        double valor_total;
        double monto;

        protected void Page_Load(object sender, EventArgs e)
        {
           


        }


        protected void comprar(double monto)
        {
            iva = monto * Convert.ToDouble(cop.variable(40));
            ica = monto * Convert.ToDouble(cop.variable(42));

            if (monto > 895212)
            {
                retefuente = monto * Convert.ToDouble(cop.variable(41));


            }


            descuento = monto * Convert.ToDouble(cop.variable(60));

            valor_total = (((monto + iva) - ica) - retefuente) - descuento;

           


        }

        protected void Guardar_Click(object sender, EventArgs e)
        {
            





        }

        protected void btnhaceroferta_Click(object sender, EventArgs e)
        {
            movimiento.id = empr.llamaridempresa(int.Parse(Session["id_usuario"].ToString()));

            movimiento.valor = Convert.ToDouble(txtoferta.Text);

            compracon.oferta(movimiento);
           





        }
    }
}