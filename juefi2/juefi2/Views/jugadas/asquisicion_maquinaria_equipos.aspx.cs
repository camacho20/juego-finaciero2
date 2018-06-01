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
        EmpresaController empr = new EmpresaController();


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
            int idempresa = int.Parse(empr.llamaridempresa(int.Parse(Session["id_usuario"].ToString())));

            monto = Convert.ToDouble(txtmontoadqui.Text);
            calcular(monto);
            txtmontoadqui.Text = Convert.ToString(monto);
            movimiento.nombre_movimineto = "Adquisición de Maquinaria y Eq. Industrial";
            movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(14));
            movimiento.nombre_cuenta = "Activos Fijos - Maquinaria y Equipo Industriald";
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

            movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(37));
            movimiento.nombre_cuenta = "Cuentas por Pagar - Acreedores Varios (Compra de Activos Fijos)";
            movimiento.credito = disponible;
            disponible = cop.valorpucempresa(Convert.ToInt32(cop.codigopuc(37)), idempresa) + disponible;
            cop.editarvalorpucempresa(disponible, Convert.ToInt32(cop.codigopuc(37)), idempresa);

            inversion.credito(movimiento);


            txtmontoadqui.Text = "";
            Response.Write("<script> alert('Realizada Gasto'); </script>");
            return;
        }
    }


}
