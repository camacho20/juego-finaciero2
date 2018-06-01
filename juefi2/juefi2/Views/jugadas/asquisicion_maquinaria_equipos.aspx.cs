using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using juefi2.Controllers;
using juefi2.Models;

namespace juefi2.Views.jugadas
{
    public partial class asquisicion_maquinaria_equipos : System.Web.UI.Page
    {

        MovimientoModel movimiento = new MovimientoModel();
        MovimientoController inversion = new MovimientoController();
        paramtrizacionañoModel año = new paramtrizacionañoModel();
        ValorPucYReglaController cop = new ValorPucYReglaController();

        double reteica;
        double monto;
        double rtfuente;
        double disponible;
        double valor_total_aquisicion;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void calcular(double monto)
        {

            monto = Convert.ToDouble(txtmontoadqui.Text);
            reteica = monto * Convert.ToDouble(año.variableaño(5));

            if (monto > 895212)
            {
                rtfuente = monto * Convert.ToDouble(año.variableaño(4));


            }

            disponible = (monto - rtfuente) - reteica;
            valor_total_aquisicion = disponible + rtfuente + reteica;


        }

        protected void guardar_Click(object sender, EventArgs e)
        {
            if (txtmontoadqui.Text == "" || txtmontoadqui.Text == "0")
            {

                Response.Write("<script> alert('Debe llenar los campos o invertir minimo 1 unidad '); </script>");
                return;
            }


            monto = Convert.ToDouble(txtmontoadqui.Text);
            calcular(monto);
            txtmontoadqui.Text = Convert.ToString(monto);
            movimiento.nombre_movimineto = "Adquisición de Maquinaria y Eq. Industrial";
            movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(61));
            movimiento.nombre_cuenta = "Activos Fijos - Maquinaria y Equipo Industriald";
            movimiento.debito = monto;
            inversion.debito(movimiento);

            movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(41));
            movimiento.nombre_cuenta = "Impuestos por Pagar - Retención en la Fuente";
            movimiento.credito = rtfuente;
            inversion.credito(movimiento);

            movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(42));
            movimiento.nombre_cuenta = "Impuestos por Pagar - Retención de ICA";
            movimiento.credito = reteica;
            inversion.credito(movimiento);

            movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(37));
            movimiento.nombre_cuenta = "Cuentas por Pagar - Acreedores Varios (Compra de Activos Fijos)";
            movimiento.credito = disponible;
            inversion.credito(movimiento);


            txtmontoadqui.Text = "";
            Response.Write("<script> alert('Realizada Gasto'); </script>");
            return;
        }
    }


}
