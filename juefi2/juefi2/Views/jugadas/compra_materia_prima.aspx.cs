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
            txttotal.Enabled = false;
            lblmateriacomprar.Visible = false;
            txtMonto.Visible = false;
            txtformapago.Visible = false;
            Dropforpago.Visible = false;
            lblvalortotal.Visible = false;
            txttotal.Visible = false;
            btnGuardar.Visible = false;


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
                txttotal.Text = Convert.ToString(valor_total);
                movimiento.nombre_movimineto = "Compra de contado";
                movimiento.codigo_puc =  Convert.ToInt32 (cop.codigopuc(10));
                movimiento.debito = monto;
                compracon.debito(movimiento);

                movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(40));
                movimiento.debito = iva;
                compracon.debito(movimiento);

                movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(60));
                movimiento.credito = descuento;
                compracon.credito(movimiento);

                movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(41));
                movimiento.credito = retefuente;
                compracon.credito(movimiento);

                movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(42));
                movimiento.credito =ica ;
                compracon.credito(movimiento);

                movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(2));
                movimiento.credito = valor_total;
                compracon.credito(movimiento);


                txtMonto.Text = "";
                Dropforpago.SelectedIndex = 0;

                Response.Write("<script> alert('Compra registrada'); </script>");
                return;
            }

            if (Dropforpago.SelectedIndex == 2)
            {



                monto = Convert.ToDouble(txtMonto.Text)*630 ;
                comprar(monto);
                txttotal.Text = Convert.ToString(valor_total);
                movimiento.nombre_movimineto = "Compra a credito";
                movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(10));
                movimiento.debito = monto;
                compracon.debito(movimiento);

                movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(40));
                movimiento.debito = iva;
                compracon.debito(movimiento);

               

                movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(41));
                movimiento.credito = retefuente;
                compracon.credito(movimiento);

                movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(42));
                movimiento.credito = ica;
                compracon.credito(movimiento);

                movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(31));
                movimiento.credito = valor_total+descuento;
                compracon.credito(movimiento);


                txtMonto.Text = "";
                Dropforpago.SelectedIndex = 0;

                Response.Write("<script> alert('Compra registrada'); </script>");
                return;
            }





        }

        protected void btnhaceroferta_Click(object sender, EventArgs e)
        {
            movimiento.id = empr.llamaridempresa(int.Parse(Session["id_usuario"].ToString()));

            movimiento.valor = Convert.ToDouble(txtoferta.Text);

            compracon.oferta(movimiento);
           





        }
    }
}