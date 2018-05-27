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
    public partial class AgrgarUsuriosEmpresa : System.Web.UI.Page
    {
        EmpresaController empr = new EmpresaController();
        EmpresaModel emp = new EmpresaModel();
        private DataTable datanombre;
        private DataTable datanombre2;
        string nombreappeli;
        string nombres;
        string apellido;
        string tempo;
        string [] arre;
        public DataRow daronombre;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            lblnombreempresa.Text = empr.llamarnombreempresa(int.Parse(empr.llamaridempresa(int.Parse(Session["id_usuario"].ToString()))));
        }


      

       



        //Asignacion integrantes

        //protected void moverUser1_Click(object sender, EventArgs e)
        //{
        //    while (ListUsuariosDisponibles.GetSelectedIndices().Length > 0)
        //    {
        //        ListUsuariosAsignados.Items.Add(ListUsuariosDisponibles.SelectedItem);
        //        ListUsuariosDisponibles.Items.Remove(ListUsuariosDisponibles.SelectedItem);
        //    }
           

        //}

        //protected void moverUser2_Click(object sender, EventArgs e)
        //{
        //    while (ListUsuariosAsignados.GetSelectedIndices().Length > 0)
        //    {
        //        ListUsuariosDisponibles.Items.Add(ListUsuariosAsignados.SelectedItem);
        //        ListUsuariosAsignados.Items.Remove(ListUsuariosAsignados.SelectedItem);
        //    }
           
        //}

        

     

        protected void btncarbar_Click(object sender, EventArgs e)
        {
            datanombre = empr.llamarinombre();
            for (int i = 0; i < datanombre.Rows.Count; i++)
            {
                nombreappeli = datanombre.Rows[i]["nombre_1_usuario"].ToString() + ' ' + datanombre.Rows[i]["apellido_1_usuario"].ToString();

                ListUsuariosDisponibles.Items.Add(nombreappeli);



            }

            //datanombre2 = empr.llamarusunombre(int.Parse(empr.llamaridempresa(int.Parse(Session["id_usuario"].ToString()))));

            //for (int i = 0; i < datanombre2.Rows.Count; i++)
            //{
            //    nombreappeli = datanombre2.Rows[i]["nombre_1_usuario"].ToString() + " " + datanombre2.Rows[i]["apellido_1_usuario"].ToString();

            //    ListUsuariosAsignados.Items.Add(nombreappeli);


            //}




            btncarbar.Enabled = false;
        }

        protected void btnbuardarusuario_Click(object sender, EventArgs e)
        {
            while (ListUsuariosDisponibles.GetSelectedIndices().Length > 0)
            {
                tempo = ListUsuariosDisponibles.SelectedItem.ToString();
                arre = tempo.Split(' ');
                nombres = arre[0];
                apellido = arre[1];
                empr.reusuario_empresa(empr.agregarusuarios(nombres, apellido), int.Parse(empr.llamaridempresa(int.Parse(Session["id_usuario"].ToString()))));
                ListUsuariosDisponibles.Items.Remove(ListUsuariosDisponibles.SelectedItem);
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