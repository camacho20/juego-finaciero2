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
    public partial class PagocompraMaquinariaEquipo : System.Web.UI.Page
    {

        MovimientoModel movimiento = new MovimientoModel();
        MovimientoController inversion = new MovimientoController();
        paramtrizacionañoModel año = new paramtrizacionañoModel();
        ValorPucYReglaController cop = new ValorPucYReglaController();
        EmpresaController empr = new EmpresaController();

        
        double monto;
        
                protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void calcular(double monto)
        {

            monto = Convert.ToDouble(txtmontopago.Text);
                           
        }


        protected void guardar_Click(object sender, EventArgs e)
        {
            if (txtmontopago.Text == "" || txtmontopago.Text == "0")
            {

                Response.Write("<script> alert('Debe llenar los campos o invertir minimo 1 unidad '); </script>");
                return;
            }


            int idempresa = int.Parse(empr.llamaridempresa(int.Parse(Session["id_usuario"].ToString())));
            calcular(monto);
            txtmontopago.Text = Convert.ToString(monto);
            movimiento.nombre_movimineto = "Pago por compra de Maquinaria y Eq. Industrial ";
            movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(37));
            movimiento.nombre_cuenta = "Cuentas por Pagar - Acreedores Varios (Compra de Activos Fijos)";
            movimiento.debito = monto;
            monto = cop.valorpucempresa(Convert.ToInt32(cop.codigopuc(37)), idempresa) - monto;
            cop.editarvalorpucempresa(monto, Convert.ToInt32(cop.codigopuc(37)), idempresa);
            inversion.debito(movimiento);

           
            movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(2));
            movimiento.nombre_cuenta = "Disponible";
            movimiento.credito = monto;
            monto = cop.valorpucempresa(Convert.ToInt32(cop.codigopuc(2)), idempresa) - monto;
            cop.editarvalorpucempresa(monto, Convert.ToInt32(cop.codigopuc(2)), idempresa);
            inversion.credito(movimiento);


            txtmontopago.Text = "";
            Response.Write("<script> alert('Realizada Gasto'); </script>");
            return;
        }
    }
}
