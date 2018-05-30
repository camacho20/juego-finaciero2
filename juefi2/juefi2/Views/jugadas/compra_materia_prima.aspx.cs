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
        double disponible;
        double proveedor;
        double promedio;
        double monto;
        double op;
        double preciomp;
      
        protected void Page_Load(object sender, EventArgs e)
        {

            Label1.Visible = false;
            lblmateriacomprar.Visible = false;
            labelcanti.Visible = false;
            Txtcantidad.Visible = false;
            labelformadepago.Visible = false;
            formadepago.Visible = false;
            labevalorcompra.Visible = false;
            Txtvalorcompra.Visible = false;
            guardar.Visible = false;
                        
            mostrar();

        }

        protected void mostrar()
        {


            if (compracon.activarcompra()=="Activa") {


                promedio =Convert.ToDouble( modelproe.promedio_oferta());
                preciomp = (((Convert.ToDouble(acti.valoroferta(int.Parse( empr.llamaridempresa(int.Parse(Session["id_usuario"].ToString()))))) - promedio) / promedio) * 100);
                op = (Convert.ToDouble(acti.pametros_periodo(5)) * Convert.ToDouble(acti.pametros_periodo(1))) * (1 + preciomp);


                Label1.Text =Convert.ToString(op);
                lblmateriacomprar.Enabled = false;
                Label1.Enabled = false;
                txtoferta.Visible = false;
                btnhaceroferta.Visible = false;
                labelmonto.Visible = false;


                Label1.Visible = true;
                lblmateriacomprar.Visible = true;
                labelcanti.Visible = true;
                Txtcantidad.Visible = true;
                labelformadepago.Visible = true;
                formadepago.Visible = true;
                labevalorcompra.Visible = true;
                Txtvalorcompra.Visible = true;
                Txtvalorcompra.Enabled = true;
                guardar.Visible = true;


            }
                              
                     
                  }

        protected void comprar(double monto)
        {
            monto = Convert.ToDouble(acti.valoroferta(int.Parse(empr.llamaridempresa(int.Parse(Session["id_usuario"].ToString())))));
            preciomp = (((Convert.ToDouble(acti.valoroferta(int.Parse(empr.llamaridempresa(int.Parse(Session["id_usuario"].ToString()))))) - promedio) / promedio) * 100);
            promedio = Convert.ToDouble(modelproe.promedio_oferta());
            op = (Convert.ToDouble(acti.pametros_periodo(5)) * Convert.ToDouble(acti.pametros_periodo(1))) * (1 + preciomp);
            

            iva = monto * Convert.ToDouble(acti.pametros_año(6));
            ica = monto * Convert.ToDouble(acti.pametros_año(5));

            if (monto > 895212)
            {
                retefuente = monto * Convert.ToDouble(acti.pametros_año(4));
            }

            Txtvalorcompra.Text = (monto* op).ToString();
            descuento = monto * 0.05;
            valor_total = (((monto + iva) - ica) - retefuente) - descuento;
            disponible = (((monto - retefuente) - ica )- descuento);
            proveedor = ((monto - retefuente) - ica);

        }

        protected void Guardar_Click(object sender, EventArgs e)
        {
            if (Txtcantidad.Text == "" || Txtcantidad.Text == "0")
            {

                Response.Write("<script> alert('Debe llenar los campos o invertir minimo 1 unidad '); </script>");
                return;
            }


           if (formadepago.Text == "Contado") { 
            comprar (monto);
            movimiento.nombre_movimineto = "Compra de contado de Materias Primas";
            movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(10));
            movimiento.nombre_cuenta = "Cargos Diferidos - Inversiones en Tecnología";
            movimiento.debito = Convert.ToDouble( Txtvalorcompra.Text);
            compracon.debito(movimiento);

            movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(40));
            movimiento.nombre_cuenta = "Impuestos por Pagar - IVA por Pagar";
            movimiento.debito = iva;
            compracon.debito(movimiento);

            movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(60));
            movimiento.nombre_cuenta = "Descuento por Compra de Materias Primas";
            movimiento.credito = descuento;
            compracon.credito(movimiento);

            movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(41));
            movimiento.nombre_cuenta = "Impuestos por Pagar - Retención en la Fuente";
            movimiento.credito = retefuente;

            compracon.credito(movimiento);
            movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(42));
            movimiento.nombre_cuenta = "Impuestos por Pagar - Retención de ICA";
            movimiento.credito = ica;
            compracon.credito(movimiento);

            movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(2));
            movimiento.nombre_cuenta = "Disponible";
            movimiento.credito = disponible;
            compracon.credito(movimiento);


            Txtcantidad.Text = "";
            Txtvalorcompra.Text = "";
            formadepago.Text = "";
            Response.Write("<script> alert('Inversion Realizada'); </script>");
            return;
            }




            if (formadepago.Text == "Credito")
            {
                comprar(monto);
                movimiento.nombre_movimineto = "Compra de contado de Materias Primas";
                movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(10));
                movimiento.nombre_cuenta = "Cargos Diferidos - Inversiones en Tecnología";
                movimiento.debito = Convert.ToDouble(Txtvalorcompra.Text);
                compracon.debito(movimiento);

                movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(40));
                movimiento.nombre_cuenta = "Impuestos por Pagar - IVA por Pagar";
                movimiento.debito = iva;
                compracon.debito(movimiento);

           
                movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(41));
                movimiento.nombre_cuenta = "Impuestos por Pagar - Retención en la Fuente";
                movimiento.credito = retefuente;

                compracon.credito(movimiento);
                movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(42));
                movimiento.nombre_cuenta = "Impuestos por Pagar - Retención de ICA";
                movimiento.credito = ica;
                compracon.credito(movimiento);

                movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(31));
                movimiento.nombre_cuenta = "Proveedores de Materias Primas";
                movimiento.credito = proveedor;
                compracon.credito(movimiento);


                Txtcantidad.Text = "";
                Txtvalorcompra.Text = "";
                formadepago.Text = "";
                Response.Write("<script> alert('Inversion Realizada'); </script>");
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