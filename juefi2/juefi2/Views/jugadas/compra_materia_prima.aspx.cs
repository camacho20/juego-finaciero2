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
        ActivarCompraController acti = new ActivarCompraController();
        ActivarCompraModel modelproe = new ActivarCompraModel();
        double iva;
        double ica;
        double retefuente;
        double descuento;
        double valor_total;
        double monto;
        double promedio;
        double op;
        double preciomp;

        protected void Page_Load(object sender, EventArgs e)
        {

            //txttotal.Enabled = false;
            //lblmateriacomprar.Enabled = false;
            //txtMonto.Visible = false;
            //txtformapago.Visible = false;
            //Dropforpago.Visible = false;
            //lblvalortotal.Visible = false;
            //txttotal.Visible = false;
            //btnGuardar.Visible = false;




           

        }


        protected void comprar(double monto)
        {

            //preciomp = (((Convert.ToDouble(txtMonto.Text) - promedio) / promedio) * 100);


            promedio = Convert.ToDouble(acti.promedio());

            op = (Convert.ToDouble(acti.pametros_periodo(5)) * Convert.ToDouble(acti.pametros_periodo(1))) * (1 + preciomp);

          


            iva = monto * Convert.ToDouble(acti.pametros_año(6));
            ica = monto * Convert.ToDouble(acti.pametros_año(5));

            if (monto > 895212)
            {
                retefuente = monto * Convert.ToDouble(acti.pametros_año(4));


            }


            descuento = monto * Convert.ToDouble(cop.variable(60));

            valor_total = (((monto + iva) - ica) - retefuente) - descuento;
            //valor_total = (((monto + iva) - ica) - retefuente) ;




        }

        protected void Guardar_Click(object sender, EventArgs e)
        {
            





        }

        protected void btnhaceroferta_Click(object sender, EventArgs e)
        {
            movimiento.id = empr.llamaridempresa(int.Parse(Session["id_usuario"].ToString()));

            movimiento.valor = Convert.ToDouble(txtoferta.Text);

            compracon.oferta(movimiento);

            //lblmateriacomprar.Text = Convert.ToString(op);


        }


        
    }
}