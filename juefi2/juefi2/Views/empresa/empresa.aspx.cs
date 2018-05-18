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
        public DataTable datanombre = new DataTable();
        public DataRow daronombre;
        MovimientoController ofer = new MovimientoController();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblagre.Visible = false;
            usuario1.Visible = false;
            btngregar.Visible = false;
            inter.Visible = false;

            llenarlista();
            mostraragregados2.Visible = false;
            llenar_combo(usuario1);

        }

        protected void btnguardar_Click(object sender, EventArgs e)
        {
            if (txtnit.Text=="" || txtnombre.Text=="")
            {
                Response.Write("<script> alert('Debe llenar los campos'); </script>");
                return;
            }
            if (txtnit.Text.Length<4 || txtnombre.Text.Length <4)
            {
                Response.Write("<script> alert('El nombre y el nit deben ser mayores a 4 caracteres.'); </script>");
                return;
            }



            if (DropIntegrantes.SelectedIndex==0)
            {
                Response.Write("<script> alert('Debe seleccionar el numero de Integrantes'); </script>");
                return;
            }

            if (DropIntegrantes.SelectedIndex == 1)
            {
                emp.id_empresa = int.Parse (txtnit.Text);
                emp.nombre_de_empresa = txtnombre.Text;
                emp.numero_integrantes_empresa = int.Parse(DropIntegrantes.SelectedItem.Text);
                emp.politicas_empresa = politicas.Value;
                empr.registro_empresa(emp);
                empr.reusuario_empresa(int.Parse(Session["id_usuario"].ToString()), int.Parse(txtnit.Text));
                txtnit.Enabled = false;
                txtnombre.Enabled = false;
                DropIntegrantes.SelectedIndex = 0;
                btnguardar.Enabled = false;
                lblagre.Visible = true;
                usuario1.Visible = true;
                btngregar.Visible = true;
                inter.Visible = true;
                mostraragregados2.Visible = true;
                Response.Write("<script> alert('Empresa registrada'); </script>");
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
                txtnit.Enabled = false;
                txtnombre.Enabled = false;
                DropIntegrantes.SelectedIndex = 0;
                btnguardar.Enabled = false;
                lblagre.Visible = true;
                usuario1.Visible = true;
                btngregar.Visible = true;
                inter.Visible = true;
                mostraragregados2.Visible = true;
                Response.Write("<script> alert('Empresa registrada'); </script>");
                return;
            }

         
        }


        protected void llenar_combo(DropDownList lista)
        {
            
            lista.DataSource = empr.llamarinombre(); 
           
            // FieldName of Table in DataBase

            lista.DataValueField = "apellido_1_usuario";
            lista.DataTextField = "nombre_1_usuario";
            lista.DataBind();
            

        }

        protected void llenarlista() {

            mostraragregados2.DataSource = empr.llamarusunombre(int.Parse( empr.llamaridempresa(int.Parse(Session["id_usuario"].ToString()))));
            mostraragregados2.DataBind();
        }


        protected void btngregar_Click(object sender, EventArgs e)
        {
          
        }
    }
}