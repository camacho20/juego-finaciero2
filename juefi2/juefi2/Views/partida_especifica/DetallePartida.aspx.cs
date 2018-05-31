using juefi2.Controllers;
using juefi2.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace juefi2.Views.partida_especifica
{
    public partial class DetallePartida : System.Web.UI.Page
    {
        PartidaController partida = new PartidaController();
        PartidaModel par = new PartidaModel();
        EmpresaController empre = new EmpresaController();
        PucController pu = new PucController();



        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
               
                llenarpartida(partida1);



            }
        }


        protected void llenarpartida(DropDownList partida)
        {
            partida.DataSource = par.Consultarpartida();
            partida.DataValueField = "id_partida_general";
            partida.DataValueField = "nombre_partida";
            partida.DataBind();



        }





        protected void TaskGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {


            PucModel emp = new PucModel();
            DataTable dt = emp.consultarcopia(int.Parse(partida.consulidpartida(partida1.Text)));


            GridViewRow row = puces.Rows[e.RowIndex];



            puces.EditIndex = -1;



            emp.idpuc = Convert.ToInt32(((TextBox)(row.Cells[2].Controls[0])).Text);
            emp.codigo = Convert.ToInt32(((TextBox)(row.Cells[3].Controls[0])).Text);
            emp.descrip = ((TextBox)(row.Cells[4].Controls[0])).Text;

            emp.valor = ((TextBox)(row.Cells[5].Controls[0])).Text;

            //emp.tiporegla = ((DropDownList)(row.Cells[4].Controls[0])).SelectedValue;

            emp.editarcopiapuc(emp);
            //string regla1 : ((TextBox)(row.Cells[1].Controls[0])).Text;
            //string regla2 : ((TextBox)(row.Cells[2].Controls[0])).Text;
            //emp.actualizar(regla1);


            Bindata();


        }

        private void Bindata()
        {
            PucModel emp = new PucModel();
            puces.DataSource = emp.consultarcopia(int.Parse(partida.consulidpartida(partida1.Text)));
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



            PucModel emp = new PucModel();
            DataTable dt = emp.consultarcopia(int.Parse(partida.consulidpartida(partida1.Text)));



            emp.eliminacopiapuc(puces.Rows[e.RowIndex].Cells[2].Text);


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






        protected void llenartabla(int puc,string item)
        {

            puces.DataSource = pu.buscarcopia(puc,item);
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
                llenartabla(int.Parse(partida.consulidpartida(partida1.Text)),txtBuscar.Text);
                puces.HeaderRow.Cells[2].Text = "Nº";
                puces.HeaderRow.Cells[3].Text = "Codigo";
                puces.HeaderRow.Cells[4].Text = "Nombre";
                puces.HeaderRow.Cells[5].Text = "Valor";

            }
        }
        protected void rerescar(string iten)
        {

            if (txtBuscar.Text == "")
            {
                Bindata();


            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Bindata();
        }
    }
}