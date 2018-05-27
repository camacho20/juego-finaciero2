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
    public partial class BalacePuc : System.Web.UI.Page
    {
        
        public DataTable datablaConsulta = new DataTable();
        public DataRow darowConsulta;
        PucController pu = new PucController();
        PucModel puce = new PucModel();
       

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                rerescar(txtBuscar.Text);

                PucModel emp = new PucModel();
               

                puces.DataSource = emp.Consultarpuc();
                puces.DataBind();
                puces.HeaderRow.Cells[2].Text = "Nº";
                puces.HeaderRow.Cells[3].Text = "Codigo";
                puces.HeaderRow.Cells[4].Text = "Nombre";
                puces.HeaderRow.Cells[5].Text = "Valor";

               

            }

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

            emp.valor = ((TextBox)(row.Cells[5].Controls[0])).Text;

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
            puces.HeaderRow.Cells[4].Text = "Nombre";

            puces.HeaderRow.Cells[5].Text = "Valor";

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

        protected void puces_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            puces.PageIndex = e.NewPageIndex;
            Bindata();
        }

       




        protected void llenartabla(string item) {

            puces.DataSource = pu.buscar(item);
            puces.DataBind();


        }

        protected void btnbucas_Click(object sender, EventArgs e)
        {
            if (txtBuscar.Text == "")
            {
                Bindata();


            }
            else
            {
                llenartabla(txtBuscar.Text);
                puces.HeaderRow.Cells[2].Text = "Nº";
                puces.HeaderRow.Cells[3].Text = "Codigo";
                puces.HeaderRow.Cells[4].Text = "Nombre";
                puces.HeaderRow.Cells[5].Text = "Valor";

            }
        }
        protected void rerescar(string iten) {

            if (txtBuscar.Text == "")
            {
                Bindata();


            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (descrip2.Value.ToString() == "")
            {

                Response.Write("<script> alert('El nombre esta vacio </script>");
                return;
            }
            if (codigo.Text == "" || codigo.Text == "0")
            {
                Response.Write("<script> alert('LLenar el campo codigo con numero mayores a 0'); </script>");
                return;
            }



            if (pu.pucExiste(puce.descrip,puce.codigo) == true)
            {

                Response.Write("<script> alert('Puc ya existe'); </script>");
                return;

            }

            puce.codigo = Int32.Parse(codigo.Text);
            puce.descrip = descrip2.Value;
            puce.valor = txtValor.Text;



            if (pu.Registrapuc(puce) == true)
            {



                Response.Write("<script> alert('Puc registrado'); </script>");

                descrip2.Value = "";
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
