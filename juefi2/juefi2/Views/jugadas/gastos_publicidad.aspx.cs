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
        ActivarCompraController acti = new ActivarCompraController();
        EmpresaController empr = new EmpresaController();

        double reteica;
        double monto;
        double rtfuente;
        double disponible;
        double total_publicidad;




        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void calcular(double monto)
        {

            monto = Convert.ToDouble(Txtmonto.Text);
            reteica = monto * Convert.ToDouble(acti.pametros_año(5));

            if (monto > 895212)
            {
                rtfuente = monto * Convert.ToDouble(acti.pametros_año(4));


            }

            disponible = (monto - rtfuente) - reteica;

            total_publicidad = disponible + rtfuente + reteica;

        }

        protected void guardar_Click(object sender, EventArgs e)
        {
            if (Txtmonto.Text == "" || Txtmonto.Text == "0")
            {

                Response.Write("<script> alert('Debe llenar los campos o invertir minimo 1 unidad '); </script>");
                return;
            }
            int idempresa = int.Parse(empr.llamaridempresa(int.Parse(Session["id_usuario"].ToString())));

            monto = Convert.ToDouble(Txtmonto.Text);
            calcular(monto);
            Txtmonto.Text = Convert.ToString(monto);
            movimiento.nombre_movimineto = "Gastos de publicidad";
            movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(61));
            movimiento.nombre_cuenta = "Gastos de Ventas - Publicidad";
            movimiento.debito = monto;
            monto = cop.valorpucempresa(Convert.ToInt32(cop.codigopuc(61)), idempresa) + monto;
            cop.editarvalorpucempresa(monto, Convert.ToInt32(cop.codigopuc(61)), idempresa);
            inversion.debito(movimiento);

            movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(41));
            movimiento.nombre_cuenta = "Impuestos por Pagar - Retención en la Fuente";
            movimiento.credito = rtfuente;
            rtfuente = cop.valorpucempresa(Convert.ToInt32(cop.codigopuc(41)), idempresa) + rtfuente;
            cop.editarvalorpucempresa(rtfuente, Convert.ToInt32(cop.codigopuc(41)), idempresa);
            inversion.credito(movimiento);

            movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(42));
            movimiento.nombre_cuenta = "Impuestos por Pagar - Retención de ICA";
            movimiento.credito = reteica;
            reteica = cop.valorpucempresa(Convert.ToInt32(cop.codigopuc(42)), idempresa) + reteica;
            cop.editarvalorpucempresa(reteica, Convert.ToInt32(cop.codigopuc(42)), idempresa);
            inversion.credito(movimiento);

            movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(2));
            movimiento.nombre_cuenta = "Disponible";
            movimiento.credito = disponible;
            disponible = cop.valorpucempresa(Convert.ToInt32(cop.codigopuc(2)), idempresa) - disponible;
            cop.editarvalorpucempresa(disponible, Convert.ToInt32(cop.codigopuc(2)), idempresa);
            inversion.credito(movimiento);
                    
            Txtmonto.Text = "";
            Response.Write("<script> alert('Realizada Gasto'); </script>");
            return;
        }
    }
}