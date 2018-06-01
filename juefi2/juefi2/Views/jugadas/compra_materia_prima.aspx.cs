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
        ValorPucYReglaController cop = new ValorPucYReglaController();
        MovimientoModel movimiento = new MovimientoModel();
        MovimientoController compracon = new MovimientoController();
        EmpresaController empr = new EmpresaController();
        ActivarCompraController acti = new ActivarCompraController();
        ActivarCompraModel modelproe = new ActivarCompraModel();
        double iva;
        double ica;
        double retefuente;
        double descuento;
        double valor_total_compra;
        double disponible;
        double proveedor;
        double promedio;
        double monto;
        double op;
        double preciomp;
        double canti;
        double valor;
        int idempresa;
        protected void Page_Load(object sender, EventArgs e)
        {

            Txtvalorcompra.Enabled = false;

            mostrar();
            idempresa = int.Parse(empr.llamaridempresa(int.Parse(Session["id_usuario"].ToString())));
        }

        protected void mostrar()
        {


            promedio = Convert.ToDouble(modelproe.promedio_oferta());
            preciomp = (((Convert.ToDouble(acti.valordeoferta(int.Parse(empr.llamaridempresa(int.Parse(Session["id_usuario"].ToString()))))) - promedio) / promedio) * 100);
            op = (Convert.ToDouble(acti.pametros_periodo(5)) * Convert.ToDouble(acti.pametros_periodo(1))) * (1 + preciomp);


            Label1.Text = Convert.ToString(op);

        }



        protected void comprar(double dd)
        {
            monto = Convert.ToDouble(acti.valordeoferta(int.Parse(empr.llamaridempresa(int.Parse(Session["id_usuario"].ToString())))));
            preciomp = (((Convert.ToDouble(acti.valordeoferta(int.Parse(empr.llamaridempresa(int.Parse(Session["id_usuario"].ToString()))))) - promedio) / promedio) * 100);
            promedio = Convert.ToDouble(modelproe.promedio_oferta());
            op = (Convert.ToDouble(acti.pametros_periodo(5)) * Convert.ToDouble(acti.pametros_periodo(1))) * (1 + preciomp);

            canti = Convert.ToDouble(Txtcantidad2.Text);
            valor = monto * canti;

            iva = valor * Convert.ToDouble(acti.pametros_año(6));
            ica = valor * Convert.ToDouble(acti.pametros_año(5));

            if (valor > 895212)
            {
                retefuente = valor * Convert.ToDouble(acti.pametros_año(4));
            }


            descuento = valor * 0.05;
            valor_total_compra = (((valor + iva) - ica) - retefuente) - descuento;

            disponible = (((valor + iva - retefuente) - ica )- descuento);
            proveedor = ((valor - retefuente) - ica);



        }

        protected void calcular_Click(object sender, EventArgs e)
        {
            canti = Convert.ToDouble(Txtcantidad2.Text);
            monto = Convert.ToDouble(acti.valordeoferta(int.Parse(empr.llamaridempresa(int.Parse(Session["id_usuario"].ToString())))));
            valor = monto * canti;

            Txtvalorcompra.Text = Convert.ToString(valor);



        }

        protected void Guardar_Click(object sender, EventArgs e)
        {
            if (Txtcantidad2.Text == "" || Txtcantidad2.Text == "0")
            {

                Response.Write("<script> alert('Debe llenar los campos o invertir minimo 1 unidad '); </script>");
                return;
            }

                      //contado
            if (formadepago.SelectedIndex == 1)

            {
                comprar(monto);


                    movimiento.nombre_movimineto = "Compra de contado de Materias Primas";
                    movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(10));
                    movimiento.nombre_cuenta = "Inventario de Materias Primas";
                    movimiento.debito = Convert.ToDouble(Txtvalorcompra.Text);
                    valor_total_compra =  cop.valorpucempresa(Convert.ToInt32(cop.codigopuc(10)),idempresa)+ Convert.ToDouble(Txtvalorcompra.Text);
                    cop.editarvalorpucempresa(valor_total_compra, Convert.ToInt32(cop.codigopuc(10)),idempresa);
                    compracon.debito(movimiento);

                    movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(40));
                    movimiento.nombre_cuenta = "Impuestos por Pagar - IVA por Pagar";
                    movimiento.debito = iva;
                    iva = cop.valorpucempresa(Convert.ToInt32(cop.codigopuc(40)),idempresa) - iva;
                    cop.editarvalorpucempresa(iva, Convert.ToInt32(cop.codigopuc(40)),idempresa);
                    compracon.debito(movimiento);

                    movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(60));
                    movimiento.nombre_cuenta = "Descuento por Compra de Materias Primas";
                    movimiento.credito = descuento;
                    descuento = cop.valorpucempresa(Convert.ToInt32(cop.codigopuc(60)),idempresa)+descuento;
                    cop.editarvalorpucempresa(descuento, Convert.ToInt32(cop.codigopuc(60)),idempresa);
                    compracon.credito(movimiento);

                    movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(41));
                    movimiento.nombre_cuenta = "Impuestos por Pagar - Retención en la Fuente";
                    movimiento.credito = retefuente;
                    retefuente = cop.valorpucempresa(Convert.ToInt32(cop.codigopuc(41)),idempresa)+retefuente;
                    cop.editarvalorpucempresa(retefuente, Convert.ToInt32(cop.codigopuc(41)),idempresa);
                    compracon.credito(movimiento);

                    movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(42));
                    movimiento.nombre_cuenta = "Impuestos por Pagar - Retención de ICA";
                    movimiento.credito = ica;
                    ica = cop.valorpucempresa(Convert.ToInt32(cop.codigopuc(42)),idempresa)+ica;
                    cop.editarvalorpucempresa(ica, Convert.ToInt32(cop.codigopuc(42)),idempresa);
                    compracon.credito(movimiento);

                    movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(2));
                    movimiento.nombre_cuenta = "Disponible";
                    movimiento.credito = disponible;
                    disponible = cop.valorpucempresa(Convert.ToInt32(cop.codigopuc(2)),idempresa)-disponible;
                    cop.editarvalorpucempresa(disponible, Convert.ToInt32(cop.codigopuc(2)),idempresa);
                    compracon.credito(movimiento);


                    Txtcantidad2.Text = "";
                    Txtvalorcompra.Text = "";
                    formadepago.Text = "";
                    Response.Write("<script> alert('Inversion Realizada'); </script>");
                    return;
                }



                //credito
                if (formadepago.SelectedIndex == 0)
                {
                    comprar(monto);
                    movimiento.nombre_movimineto = "Compra de contado de Materias Primas";
                    movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(10));
                    movimiento.nombre_cuenta = "Inventario de Materias Primas";
                    movimiento.debito = Convert.ToDouble(Txtvalorcompra.Text);
                    valor_total_compra = cop.valorpucempresa(Convert.ToInt32(cop.codigopuc(10)), idempresa) + Convert.ToDouble(Txtvalorcompra.Text);
                    cop.editarvalorpucempresa(valor_total_compra, Convert.ToInt32(cop.codigopuc(10)), idempresa);

                    compracon.debito(movimiento);

                    movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(40));
                    movimiento.nombre_cuenta = "Impuestos por Pagar - IVA por Pagar";
                    movimiento.debito = iva;
                    iva = cop.valorpucempresa(Convert.ToInt32(cop.codigopuc(40)), idempresa) - iva;
                    cop.editarvalorpucempresa(iva, Convert.ToInt32(cop.codigopuc(40)), idempresa);

                    compracon.debito(movimiento);


                    movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(41));
                    movimiento.nombre_cuenta = "Impuestos por Pagar - Retención en la Fuente";
                    movimiento.credito = retefuente;
                    retefuente = cop.valorpucempresa(Convert.ToInt32(cop.codigopuc(41)), idempresa) + retefuente;
                    cop.editarvalorpucempresa(retefuente, Convert.ToInt32(cop.codigopuc(41)), idempresa);
                    compracon.credito(movimiento);

                    movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(42));
                    movimiento.nombre_cuenta = "Impuestos por Pagar - Retención de ICA";
                    movimiento.credito = ica;
                    ica = cop.valorpucempresa(Convert.ToInt32(cop.codigopuc(42)), idempresa) + ica;
                    cop.editarvalorpucempresa(ica, Convert.ToInt32(cop.codigopuc(42)), idempresa);
                    compracon.credito(movimiento);

                    movimiento.codigo_puc = Convert.ToInt32(cop.codigopuc(31));
                    movimiento.nombre_cuenta = "Proveedores de Materias Primas";
                    movimiento.credito = proveedor;
                    proveedor = cop.valorpucempresa(Convert.ToInt32(cop.codigopuc(31)),idempresa)+proveedor;
                    cop.editarvalorpucempresa(proveedor, Convert.ToInt32(cop.codigopuc(31)),idempresa);
                    compracon.credito(movimiento);


                    Txtcantidad2.Text = "";
                    Txtvalorcompra.Text = "";
                    formadepago.Text = "";
                    Response.Write("<script> alert('Inversion Realizada'); </script>");
                    return;
                }

                Txtcantidad2.Text = "";
                Txtvalorcompra.Text = "";


            }



        }
    }
}
