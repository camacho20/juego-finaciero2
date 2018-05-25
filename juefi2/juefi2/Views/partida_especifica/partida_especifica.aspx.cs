using juefi2.Controllers;
using juefi2.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace juefi2.Views.partida_especifica
{
    public partial class partida_especifica : System.Web.UI.Page
    {
        PartidaController partida = new PartidaController();
        PartidaModel par = new PartidaModel();
        EmpresaController empre = new EmpresaController();
        private DataTable llamarempresa;
        public string msj = "";
        private Dictionary<string, int> mapa = new Dictionary<string, int>();//Para variables, nombre e indice en el dtVariables
        private List<KeyValuePair<string, bool>> listDis = new List<KeyValuePair<string, bool>>();//disponibles
        private List<KeyValuePair<string, bool>> listAsig = new List<KeyValuePair<string, bool>>();//a asignar


        protected void Page_Load(object sender, EventArgs e)
        {
            llenarUsuario();
        }

        public bool validarLetrasYNumeros(String h)
        {
            Regex reg = new Regex("[^A-Z ^a-z ^0-9 ^. ^:]");
            return !reg.IsMatch(h);
        }

        protected void guardar_Click(object sender, EventArgs e)
        {
            if ( txtnumeroempresa.Text == "")
            {
                Response.Write("<script> alert('Debe llenar los campos'); </script>");
                return;
            }

            if (txtnombrepartida.Text=="" || txtnombrepartida.Text.Length < 3)
            {
                Response.Write("<script> alert('Nombre de la partida no valida, debe ser mayor a 3 caracteres'); </script>");
                return;
            }

            if (fechaInicio.Value=="" || fechaFin.Value=="") {


                Response.Write("<script> alert('Debe escojer las fechas'); </script>");
                return;

            }


            string[] fecha = fechaInicio.Value.ToString().Split(new Char[] { '-' }); //año mes dia
            DateTime d = new DateTime(Int32.Parse(fecha[0]), Int32.Parse(fecha[1]), Int32.Parse(fecha[2]));
            DateTime ant = new DateTime(DateTime.Now.Year - 15, DateTime.Now.Month, DateTime.Now.Day);
            DateTime sig = new DateTime(DateTime.Now.Year + 1, DateTime.Now.Month, DateTime.Now.Day);




            if (Convert.ToDateTime(fechaFin.Value.ToString()) < Convert.ToDateTime(fechaInicio.Value.ToString()) || Convert.ToDateTime(fechaInicio.Value) < DateTime.Now.Date)
            {
                Response.Write("<script> alert('error en la fecha'); </script>");
                return;
            }

            par.numero_empresas = txtnumeroempresa.Text;
            par.nombre_partida = txtnombrepartida.Text;
            par.fecha_inicial = Convert.ToDateTime (fechaInicio.Value);
            par.fecha_final= Convert.ToDateTime(fechaFin.Value);

            partida.registrarpartida(par);


            Response.Write("<script> alert('Partida registrada'); </script>");


            txtnumeroempresa.Text = "";
            txtnombrepartida.Text = "";
            fechaInicio.Value = "";
            fechaFin.Value = "";
            return;


        }

        //Asignacion de empresa

        protected void moverUser1_Click(object sender, EventArgs e)
        {
            listDis = (List<KeyValuePair<string, bool>>)Session["listDis"];
            listAsig = (List<KeyValuePair<string, bool>>)Session["listAsig"];
            
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "panelAsignarUsuarios();", true);
        }

        protected void moverUser2_Click(object sender, EventArgs e)
        {
            listDis = (List<KeyValuePair<string, bool>>)Session["listDis"];
            listAsig = (List<KeyValuePair<string, bool>>)Session["listAsig"];
            while (ListUsuariosAsignados.GetSelectedIndices().Length > 0)
            {
                listDis.Add(listAsig[ListUsuariosAsignados.SelectedIndex]);
                listAsig.RemoveAt(ListUsuariosAsignados.SelectedIndex);
             
                ListUsuariosAsignados.Items.Remove(ListUsuariosAsignados.SelectedItem);
            }
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "panelAsignarUsuarios();", true);
            Session["listDis"] = listDis;
            Session["listAsig"] = listAsig;
        }

        public void llenarUsuario()
        {
          llamarempresa=  empre.empre();

            for (int i=0;i< llamarempresa.Rows.Count;i++) {

                ListadeEmpresas.Items.Add(llamarempresa.Rows[i]["nombre_empresa"].ToString());


            }
        }

        protected void AsignarUsuraios_Click(object sender, EventArgs e)
        {
            //listAsig = (List<KeyValuePair<string, bool>>)Session["listAsig"];
            //listDis = (List<KeyValuePair<string, bool>>)Session["listDis"];
            ////ProyectoController pc = new ProyectoController();
            //int con = 0, activos = 0;

            //for (int i = 0; i < listAsig.Count; i++)
            //{
            //    if (!listAsig[i].Value)
            //    {
            //        activos++;
            //        if (!pc.agregarIntegrante(listAsig[i].Key, Session["pk_pro"].ToString())) con++;
            //    }
            //}

            //for (int i = 0; i < listDis.Count; i++)
            //{
            //    if (listDis[i].Value)
            //    {
            //        activos++;
            //        if (!pc.eliminarIntegrante(listDis[i].Key, Session["pk_pro"].ToString())) con++;
            //    }
            //}

            //if (activos == 0)
            //{
            //    msj = "Sin cambios " + listDis.Count;
            //    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "Confirm();", true);
            //    return;
            //}
            //if (con == 0)
            //{
            //    msj = "Exitoso";
            //}
            //else
            //{
            //    msj = "Error al cambiar alguno(s)\nrevise que no tengas muestras registradas";
            //}
            //ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "Confirm();", true);
            //llenarUsuarios(Session["pk_pro"].ToString());
        }



    }
}