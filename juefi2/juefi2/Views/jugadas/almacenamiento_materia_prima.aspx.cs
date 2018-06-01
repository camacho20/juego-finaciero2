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
    public partial class almacenamiento_materia_prima : System.Web.UI.Page
    {

        ValorPucYReglaController cop = new ValorPucYReglaController();
        MovimientoModel movimiento = new MovimientoModel();
        MovimientoController inversion = new MovimientoController();
        EmpresaController empr = new EmpresaController();


        double cantidad;
        double disponible;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        protected void guardar_Click(object sender, EventArgs e)
        {
            if (Textcantidad.Text == "" || Textcantidad.Text == "0")
            {

                Response.Write("<script> alert('Debe llenar los campos de almacenamiento, minimo 1 unidad '); </script>");
                return;
            }
            int idempresa = int.Parse(empr.llamaridempresa(int.Parse(Session["id_usuario"].ToString())));
            cantidad = Convert.ToDouble(Textcantidad.Text) * 500;
            disponible = cantidad;
            movimiento.nombre_movimineto = "Almacenamiento de materia prima";
            movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(63));
            movimiento.nombre_cuenta = "Costos Indirectos de Fabricación - Almacenamiento de M.Primas";
            movimiento.debito = cantidad;
            cantidad = cop.valorpucempresa(Convert.ToInt32(cop.codigopuc(63)), idempresa) + cantidad;
            cop.editarvalorpucempresa(cantidad, Convert.ToInt32(cop.codigopuc(63)), idempresa);
            inversion.debito(movimiento);


            disponible = Convert.ToDouble(Textcantidad.Text) * 500;
            movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(2));
            movimiento.nombre_cuenta = "Disponible";
            movimiento.credito = disponible ;
            disponible = cop.valorpucempresa(Convert.ToInt32(cop.codigopuc(2)), idempresa) - disponible;
            cop.editarvalorpucempresa(disponible, Convert.ToInt32(cop.codigopuc(2)), idempresa);
            inversion.credito(movimiento);

           


            Textcantidad.Text = "";
            Response.Write("<script> alert('Almacenamiento Realizado'); </script>");
            return;
        }
    }
}