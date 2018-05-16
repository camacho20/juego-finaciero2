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

       
        double cantidad;
        double disponible;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void calcular(double cantidad)
        {

            cantidad = Convert.ToDouble(Textcantidad.Text)*1000;
           disponible = cantidad;

         }

        protected void guardar_Click(object sender, EventArgs e)
        {
            if (Textcantidad.Text == "" || Textcantidad.Text == "0")
            {

                Response.Write("<script> alert('Debe llenar los campos de almacenamiento, minimo 1 unidad '); </script>");
                return;
            }


           cantidad = Convert.ToDouble(Textcantidad.Text);
            calcular(cantidad);
            Textcantidad.Text = Convert.ToString(cantidad);
            movimiento.nombre_movimineto = "Almacenamiento de materia prima";
            movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(63));
            movimiento.debito = cantidad;
            inversion.debito(movimiento);

        
            movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(2));
            movimiento.credito = disponible;
            inversion.credito(movimiento);


            Textcantidad.Text = "";
            Response.Write("<script> alert('Almacenamiento Realizado'); </script>");
            return;
        }
    }
}