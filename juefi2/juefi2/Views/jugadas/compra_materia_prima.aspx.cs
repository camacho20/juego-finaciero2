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
        Compra_materia_primaModel compra = new Compra_materia_primaModel();
        CompraMateriaPrimaController compracon = new CompraMateriaPrimaController();

        double iva;
        double ica;
        double retefuente;
        double descuento;
        double valor_total;
        double monto;

        protected void Page_Load(object sender, EventArgs e)
        {
            txttotal.Enabled = false;
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

            txttotal.Text = Convert.ToString(valor_total);


        }

        protected void Guardar_Click(object sender, EventArgs e)
        {
            if (txtMonto.Text=="" || txtMonto.Text == "0") {

                Response.Write("<script> alert('Debe llenar los campos o compra minimo 1 unidad '); </script>");
                return;


            }
            if (Dropforpago.SelectedIndex==0) {


                Response.Write("<script> alert('Debe escojer un tipo de credito'); </script>");
                return;
            }

            if (Dropforpago.SelectedIndex == 1)
            {
                monto = Convert.ToDouble(txtMonto.Text)*630;
                comprar(monto);
                compra.nombre_movimineto = "Compra de contado";
                compra.codigo_puc =  Convert.ToInt32 (cop.codigopuc(10));
                compra.debito = monto;
                compracon.debito(compra);

                compra.codigo_puc = Convert.ToInt32(cop.codigopuc(40));
                compra.debito = iva;
                compracon.debito(compra);

                compra.codigo_puc = Convert.ToInt32(cop.codigopuc(60));
                compra.credito = descuento;
                compracon.credito(compra);

                compra.codigo_puc = Convert.ToInt32(cop.codigopuc(41));
                compra.credito = retefuente;
                compracon.credito(compra);

                compra.codigo_puc = Convert.ToInt32(cop.codigopuc(42));
                compra.credito =ica ;
                compracon.credito(compra);

                compra.codigo_puc = Convert.ToInt32(cop.codigopuc(2));
                compra.credito = valor_total;
                compracon.credito(compra);


                txtMonto.Text = "";
                Dropforpago.SelectedIndex = 0;

                Response.Write("<script> alert('Compra registrada'); </script>");
                return;
            }

            if (Dropforpago.SelectedIndex == 2)
            {
                monto = Convert.ToDouble(txtMonto.Text);
                comprar(monto);

                Response.Write("<script> alert('Compra registrada'); </script>");
                return;
            }





        }


       

        
    }
}