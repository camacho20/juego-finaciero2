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

         
            
            mostrar();

        }

        protected void mostrar()
        {

            
                promedio = Convert.ToDouble(modelproe.promedio_oferta());
                preciomp = (((Convert.ToDouble(acti.valordeoferta(int.Parse(empr.llamaridempresa(int.Parse(Session["id_usuario"].ToString()))))) - promedio) / promedio) * 100);
                op = (Convert.ToDouble(acti.pametros_periodo(5)) * Convert.ToDouble(acti.pametros_periodo(1))) * (1 + preciomp);


                Label1.Text = Convert.ToString(op);
  
            }
           
                   
                     
                      protected void comprar(double monto)
        {
            monto = Convert.ToDouble(acti.valordeoferta(int.Parse(empr.llamaridempresa(int.Parse(Session["id_usuario"].ToString())))));
            preciomp = (((Convert.ToDouble(acti.valordeoferta(int.Parse(empr.llamaridempresa(int.Parse(Session["id_usuario"].ToString()))))) - promedio) / promedio) * 100);
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
            if (Txtcantidad2.Text == "" || Txtcantidad2.Text == "0")
            {

                Response.Write("<script> alert('Debe llenar los campos o invertir minimo 1 unidad '); </script>");
                return;
            }


           if (formadepago.SelectedIndex.ToString() == "Contado") { 
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


            Txtcantidad2.Text = "";
            Txtvalorcompra.Text = "";
            formadepago.Text = "";
            Response.Write("<script> alert('Inversion Realizada'); </script>");
            return;
            }




            if (formadepago.SelectedIndex.ToString() == "Credito")
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


                Txtcantidad2.Text = "";
                Txtvalorcompra.Text = "";
                formadepago.Text = "";
                Response.Write("<script> alert('Inversion Realizada'); </script>");
                return;
            }




        }

       
                       
    }
}