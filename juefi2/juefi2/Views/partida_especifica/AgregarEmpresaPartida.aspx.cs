using juefi2.Controllers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace juefi2.Views.partida_especifica
{
    public partial class AgregarEmpresaPartida : System.Web.UI.Page
    {
        private DataTable datanombre;
        private DataTable datanombre2;
        string nombreappeli;
        string nombres;
        string apellido;
        string tempo;
        string[] arre;
        public DataRow daronombre;
        PartidaController par = new PartidaController();
        EmpresaController empr = new EmpresaController();


        protected void Page_Load(object sender, EventArgs e)
        {
            llenarpartida(selctpartida);
        }



        protected void llenarpartida (DropDownList partida)
        {
            partida.DataSource = par.Consultarpartida();
            partida.DataValueField = "id_partida_general";
            partida.DataValueField = "nombre_partida";
            partida.DataBind();
            
            
            
            }


        protected void btncarbar_Click(object sender, EventArgs e)
        {
            datanombre = empr.empre();
            for (int i = 0; i < datanombre.Rows.Count; i++)
            {

                ListadeEmpresas.Items.Add(datanombre.Rows[i]["nombre_empresa"].ToString());



            }
            btncarbar.Enabled = false;
        }

        protected void btnbuardarusuario_Click(object sender, EventArgs e)
        {
            


                while (ListadeEmpresas.GetSelectedIndices().Length > 0)
                {
                    nombres = ListadeEmpresas.SelectedItem.ToString();

                    empr.registrarparti(par.consulidpartida(selctpartida.SelectedIndex.ToString()), nombres);
                    ListadeEmpresas.Items.Remove(ListadeEmpresas.SelectedItem);
                }


            



           



            //datanombre = empr.llamarinombre();
            //for (int i = 0; i < datanombre.Rows.Count; i++)
            //{


            //    empr.reusuario_empresa(int.Parse(datanombre.Rows[i]["id_usuario"].ToString()), int.Parse(empr.llamaridempresa(int.Parse(Session["id_usuario"].ToString()))));


            //}


        }

        protected void btnterminar_Click(object sender, EventArgs e)
        {
            Response.Redirect("../empresa/empresa.aspx");
        }
    }
}