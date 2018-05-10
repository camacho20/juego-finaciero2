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
    public partial class gestionarpuc : System.Web.UI.Page
    {
        PucController pu = new PucController();
        PucModel puce = new PucModel();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["id_usuario"] == null)
            {
                Response.Redirect("../usuario/login.aspx");
            }
            else
            {
                if (!this.IsPostBack)
                {
                    PucModel emp = new PucModel();

                    puces.DataSource = emp.Consultarpuc();
                    puces.DataBind();
                    puces.HeaderRow.Cells[2].Text = "Nº";
                    puces.HeaderRow.Cells[3].Text = "Codigo";
                    puces.HeaderRow.Cells[4].Text = "Descripción";
                }
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


            PucModel emp = new PucModel();
            DataTable dt = emp.Consultarpuc();


            GridViewRow row = puces.Rows[e.RowIndex];



            puces.EditIndex = -1;

            emp.idpuc = Convert.ToInt32(((TextBox)(row.Cells[2].Controls[0])).Text);
            emp.codigo = Convert.ToInt32(((TextBox)(row.Cells[3].Controls[0])).Text);
            emp.descrip = ((TextBox)(row.Cells[4].Controls[0])).Text;
         
           

            //emp.tiporegla = ((DropDownList)(row.Cells[4].Controls[0])).SelectedValue;

            emp.editarpuc(emp);
            //string regla1 : ((TextBox)(row.Cells[1].Controls[0])).Text;
            //string regla2 : ((TextBox)(row.Cells[2].Controls[0])).Text;
            //emp.actualizar(regla1);


            Bindata();


        }

        private void Bindata()
        {
            PucModel emp = new PucModel();
            puces.DataSource = emp.Consultarpuc();
            puces.DataBind();
            puces.HeaderRow.Cells[2].Text = "Nº";
            puces.HeaderRow.Cells[3].Text = "Codigo";
            puces.HeaderRow.Cells[4].Text = "Descripción";


        }
        protected void TaskGridView_RowEditing(object sender, GridViewEditEventArgs e)
        {

            int y = puces.EditIndex = e.NewEditIndex;

            puces.EditIndex = e.NewEditIndex;



            Bindata();
            puces.Rows[y].Cells[2].Enabled = false;
           
           
        }

        protected void OnRowDeleting(Object sender, GridViewDeleteEventArgs e)
        {



            ReglaModel emp = new ReglaModel();
            DataTable dt = emp.Consultarregla();



            emp.eliminaregla(puces.Rows[e.RowIndex].Cells[2].Text);


            Bindata();
            //mensajes.Text = cell + "";
            //Response.Redirect("~/start.aspx");
        }

        protected void TaskGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

            puces.EditIndex = -1;

            Bindata();
        }

        protected void guardar(object sender, EventArgs e)
        {




            if (descrip1.Value.ToString() == "")
            {

                Response.Write("<script> alert('La descripcion esta'); </script>");
                return;
            }
            if (codigo.Text == "" || codigo.Text == "0")
            {
                Response.Write("<script> alert('LLenar el campo codigo con numero mayores a 0'); </script>");
                return;
            }

           

            if (pu.pucExiste(puce.descrip) == true)
            {

                Response.Write("<script> alert('Puc ya existe'); </script>");
                return;

            }

            puce.codigo = Int32.Parse(codigo.Text);
            puce.descrip = descrip1.Value;
        
            

            if (pu.Registrapuc(puce) == true)
            {



                Response.Write("<script> alert('Puc registrado'); </script>");

                descrip1.Value = "";
                codigo.Text = string.Empty;
               
                Bindata();
                return;

            }
            else
            {


                Response.Write("<script> alert('No se pudo guardar PUC  '); </script>");
                Bindata();
                return;
            }






        }



    }
}