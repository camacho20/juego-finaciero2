using juefi2.Controllers;
using juefi2.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace juefi2.Views.reglas
{
    public partial class gestionarreglas : System.Web.UI.Page
    {

        ReglaController re = new ReglaController();
        ReglaModel reg = new ReglaModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ReglaModel emp = new ReglaModel();
                regla.DataSource = emp.Consultarregla();
                regla.DataBind();
                regla.HeaderRow.Cells[2].Text = "Nº Regla";
                regla.HeaderRow.Cells[3].Text = "Descripción";
                regla.HeaderRow.Cells[4].Text = "Valor Minimo";
                regla.HeaderRow.Cells[5].Text = "Valor Maximo";
                regla.HeaderRow.Cells[6].Text = "Tipo de Regla";

            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Cookies.Add(new HttpCookie("ASP.NET_SessionId", ""));
            Response.Redirect("../usuario/login.aspx");
        }

        protected void TaskGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {


            ReglaModel emp = new ReglaModel();
            DataTable dt = emp.Consultarregla();


            GridViewRow row = regla.Rows[e.RowIndex];



            regla.EditIndex = -1;

            emp.idregla = Convert.ToInt32(((TextBox)(row.Cells[2].Controls[0])).Text);
            emp.descrip = ((TextBox)(row.Cells[3].Controls[0])).Text;
            emp.valorminimo = Convert.ToInt32(((TextBox)(row.Cells[4].Controls[0])).Text);
            emp.valormaximo = Convert.ToInt32(((TextBox)(row.Cells[5].Controls[0])).Text);

            //emp.tiporegla = ((DropDownList)(row.Cells[4].Controls[0])).SelectedValue;

            emp.editarregla(emp);
            //string regla1 : ((TextBox)(row.Cells[1].Controls[0])).Text;
            //string regla2 : ((TextBox)(row.Cells[2].Controls[0])).Text;
            //emp.actualizar(regla1);


            Bindata();


        }

        private void Bindata()
        {
            ReglaModel emp = new ReglaModel();
            regla.DataSource = emp.Consultarregla();
            regla.DataBind();
            regla.HeaderRow.Cells[2].Text = "Nº Regla";
            regla.HeaderRow.Cells[3].Text = "Descripción";
            regla.HeaderRow.Cells[4].Text = "Valor Minimo";
            regla.HeaderRow.Cells[5].Text = "Valor Maximo";
            regla.HeaderRow.Cells[6].Text = "Tipo de Regla";


        }
        protected void TaskGridView_RowEditing(object sender, GridViewEditEventArgs e)
        {

            int y = regla.EditIndex = e.NewEditIndex;

            regla.EditIndex = e.NewEditIndex;



            Bindata();
            regla.Rows[y].Cells[2].Enabled = false;
            regla.Rows[y].Cells[6].Enabled = false;
            regla.Rows[y].Cells[3].Attributes.Add("TextMode", "MultiLine");
        }

        protected void OnRowDeleting(Object sender, GridViewDeleteEventArgs e)
        {



            ReglaModel emp = new ReglaModel();
            DataTable dt = emp.Consultarregla();



            emp.eliminaregla(regla.Rows[e.RowIndex].Cells[2].Text);


            Bindata();
            //mensajes.Text = cell + "";
            //Response.Redirect("~/start.aspx");
        }

        protected void TaskGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

            regla.EditIndex = -1;

            Bindata();
        }

        protected void guardar(object sender, EventArgs e)
        {
           



            if (descrip1.Value.ToString().Length < 30 || descrip1.Value.ToString() == "")
            {

                Response.Write("<script> alert('La descripcion debe ser de al menos 30 caracteres'); </script>");
                return;
            }
            if (valormax.Text == "" || valormin.Text == "")
            {
                Response.Write("<script> alert('LLenar los campos valor maximo y minimo, si no tiene valor maximo , llenar el valor minimo y el maximo llenar con 0'); </script>");
                return;
            }

            if (tiporegla2.SelectedIndex == 0)
            {
                Response.Write("<script> alert('Debe escojer un tipo de regla'); </script>");
                return;
            }

            if (re.reglaExiste(reg.descrip) == true)
            {

                Response.Write("<script> alert('Regla ya existe'); </script>");
                return;

            }
            reg.descrip = descrip1.Value;
            reg.valorminimo = Int32.Parse(valormin.Text);
            reg.valormaximo = Int32.Parse(valormax.Text);
            reg.tiporegla = tiporegla2.SelectedItem.Text;
            reg.idusuario = 1;

            if (re.Registraregla(reg) == true)
            {



                Response.Write("<script> alert('Regla registrada'); </script>");

                descrip1.Value = "";
                valormin.Text = string.Empty;
                valormax.Text = string.Empty;
                tiporegla2.SelectedIndex = 0;
                Bindata();
                return;

            }
            else
            {


                Response.Write("<script> alert('No se pudo guardar regla  '); </script>");
                Bindata();
                return;
            }






        }
    }
}