using juefi2.Controllers;
using juefi2.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace juefi2.Views.empresa
{
    public partial class empresa : System.Web.UI.Page
    {
        EmpresaController empr = new EmpresaController();
        EmpresaModel emp = new EmpresaModel();
      
        public DataRow daronombre;
        MovimientoController ofer = new MovimientoController();

        PartidaController partida = new PartidaController();
        PartidaModel par = new PartidaModel();


        protected void Page_Load(object sender, EventArgs e)
        {


            llenarpartida(partida1);




        }


        protected void llenarpartida(DropDownList partida)
        {
            partida.DataSource = par.Consultarpartida();
            partida.DataValueField = "id_partida_general";
            partida.DataValueField = "nombre_partida";
            partida.DataBind();



        }





        protected void btnguardar_Click(object sender, EventArgs e)
        {

            
                if (txtnit.Text == "" || txtnombre.Text == "")
                {
                    Response.Write("<script> alert('Debe llenar los campos'); </script>");
                    return;
                }
                if (txtnit.Text.Length < 4 || txtnombre.Text.Length < 4)
                {
                    Response.Write("<script> alert('El nombre y el nit deben ser mayores a 4 caracteres.'); </script>");
                    return;
                }



                if (DropIntegrantes.SelectedIndex == 0)
                {
                    Response.Write("<script> alert('Debe seleccionar el numero de Integrantes'); </script>");
                    return;
                }

                if (DropIntegrantes.SelectedIndex == 1)
                {
                    emp.id_empresa = int.Parse(txtnit.Text);
                    emp.nombre_de_empresa = txtnombre.Text;
                    emp.numero_integrantes_empresa = int.Parse(DropIntegrantes.SelectedItem.Text);
                    emp.politicas_empresa = politicas.Value;
                    empr.registro_empresa(emp);
                    empr.reusuario_empresa(int.Parse(Session["id_usuario"].ToString()), int.Parse(txtnit.Text));
                empr.registrarparti(int.Parse(partida.consulidpartida(partida1.Text)), partida1.Text);
                txtnit.Text = "";
                    txtnombre.Text = "";
                    DropIntegrantes.SelectedIndex = 0;
                    politicas.Value = "";


                    Response.Write("<script> alert('Empresa registrada'); </script>");
                    Response.Redirect("../empresa/AgrgarUsuriosEmpresa.aspx");

                    return;
                }

                if (DropIntegrantes.SelectedIndex == 2)
                {
                    emp.id_empresa = int.Parse(txtnit.Text);
                    emp.nombre_de_empresa = txtnombre.Text;
                    emp.numero_integrantes_empresa = int.Parse(DropIntegrantes.SelectedItem.Text);
                    emp.politicas_empresa = politicas.Value;
                    empr.registro_empresa(emp);
                    empr.reusuario_empresa(int.Parse(Session["id_usuario"].ToString()), int.Parse(txtnit.Text));
                empr.registrarparti(int.Parse(partida.consulidpartida(partida1.SelectedItem.Text)), partida1.SelectedItem.Text);
                txtnit.Text ="";
                    txtnombre.Text ="";
                    DropIntegrantes.SelectedIndex = 0;
                    politicas.Value = "";


                    Response.Write("<script> alert('Empresa registrada'); </script>");
                    Response.Redirect("../empresa/AgrgarUsuriosEmpresa.aspx");
                    return;
                }


           
        }



            

      


        }
    }
