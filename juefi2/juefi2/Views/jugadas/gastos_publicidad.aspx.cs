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

        protected void calcular(double monto)
        {

            monto = Convert.ToDouble(Txtmonto.Text);
            reteica = monto * Convert.ToDouble(cop.variable(42));

            if (monto > 895212)
            {
                rtfuente = monto * Convert.ToDouble(cop.variable(41));


            }

            disponible = (monto - rtfuente) - reteica;
            

        }

        protected void guardar_Click(object sender, EventArgs e)
        {
            if (Txtmonto.Text == "" || Txtmonto.Text == "0")
            {

                Response.Write("<script> alert('Debe llenar los campos o invertir minimo 1 unidad '); </script>");
                return;
            }


            monto = Convert.ToDouble(Txtmonto.Text);
            calcular(monto);
            Txtmonto.Text = Convert.ToString(monto);
            movimiento.nombre_movimineto = "Gastos de publicidad";
            movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(61));
            movimiento.debito = monto;
            inversion.debito(movimiento);

            movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(41));
            movimiento.credito = rtfuente;
            inversion.credito(movimiento);

            movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(42));
            movimiento.credito = reteica;
            inversion.credito(movimiento);

            movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(2));
            movimiento.credito = disponible;
            inversion.credito(movimiento);


            Txtmonto.Text = "";
            Response.Write("<script> alert('Realizada Gasto'); </script>");
            return;
        }
    }
}