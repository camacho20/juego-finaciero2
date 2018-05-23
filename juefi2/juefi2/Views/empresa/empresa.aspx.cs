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

        private DataTable dtIntegrantes;
        public string msj = "";
        private Dictionary<string, int> mapa = new Dictionary<string, int>();//Para variables, nombre e indice en el dtVariables
        private List<KeyValuePair<string, bool>> listDis = new List<KeyValuePair<string, bool>>();//disponibles
        private List<KeyValuePair<string, bool>> listAsig = new List<KeyValuePair<string, bool>>();//a asignar


        protected void Page_Load(object sender, EventArgs e)
        {







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
                txtnit.Enabled = false;
                txtnombre.Enabled = false;
                DropIntegrantes.SelectedIndex = 0;
                btnguardar.Enabled = false;


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


                Response.Write("<script> alert('Empresa registrada'); </script>");
                return;
            }


        }

        //Asignacion integrantes

        protected void moverUser1_Click(object sender, EventArgs e)
        {
            listDis = (List<KeyValuePair<string, bool>>)Session["listDis"];
            listAsig = (List<KeyValuePair<string, bool>>)Session["listAsig"];
            while (ListUsuariosDisponibles.GetSelectedIndices().Length > 0)
            {
                listAsig.Add(listDis[ListUsuariosDisponibles.SelectedIndex]);
                listDis.RemoveAt(ListUsuariosDisponibles.SelectedIndex);
                ListUsuariosAsignados.Items.Add(ListUsuariosDisponibles.SelectedItem);
                ListUsuariosDisponibles.Items.Remove(ListUsuariosDisponibles.SelectedItem);
            }
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
                ListUsuariosDisponibles.Items.Add(ListUsuariosAsignados.SelectedItem);
                ListUsuariosAsignados.Items.Remove(ListUsuariosAsignados.SelectedItem);
            }
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "panelAsignarUsuarios();", true);
            Session["listDis"] = listDis;
            Session["listAsig"] = listAsig;
        }

        public void llenarUsuarios()
        {
            ListUsuariosDisponibles.Items.Clear();
            ListUsuariosAsignados.Items.Clear();
            listDis.Clear();
            listAsig = new List<KeyValuePair<string, bool>>();

            dtIntegrantes = empr.llamarinombre();
            Session["dtIntegrantes"] = dtIntegrantes;
            string str;
            foreach (DataRow dr in dtIntegrantes.Rows)
            {
                str = dr["nombre_1_usuario"].ToString() + "  " + dr["apellido_1_usuario"].ToString();
                if (dr["tiene_empresa"].ToString().Equals("I"))
                {
                    ListUsuariosAsignados.Items.Add(str);
                    listAsig.Add(new KeyValuePair<string, bool>(dr["id_usuario"].ToString(), true));
                }
                else
                {
                    ListUsuariosDisponibles.Items.Add(str);
                    listDis.Add(new KeyValuePair<string, bool>(dr["id_usuario"].ToString(), false));
                }
            }
            Session["listDis"] = listDis;
            Session["listAsig"] = listAsig;
        }

        protected void AsignarUsuraios_Click(object sender, EventArgs e)
        {
            listAsig = (List<KeyValuePair<string, bool>>)Session["listAsig"];
            listDis = (List<KeyValuePair<string, bool>>)Session["listDis"];

            int con = 0, activos = 0;


            for (int i = 0; i < listAsig.Count; i++)
            {
                if (!listAsig[i].Value)
                {
                    activos++;
                    if (!empr.reusuario_empresa(int.Parse(listAsig[i].Key), int.Parse(empr.llamaridempresa(int.Parse(Session["id_usuario"].ToString()))))) con++;
                }
            }

            for (int i = 0; i < listDis.Count; i++)
            {
                if (listDis[i].Value)
                {
                    activos++;
                    //    if (!pc.eliminarIntegrante(listDis[i].Key, Session["pk_pro"].ToString())) con++;
                    //}
                }

                if (activos == 0)
                {
                    msj = "Sin cambios " + listDis.Count;
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "Confirm();", true);
                    return;
                }
                if (con == 0)
                {
                    msj = "Exitoso";
                }
                else
                {
                    msj = "Error al cambiar alguno(s)\nrevise que no tengas muestras registradas";
                }
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "Confirm();", true);
                //llenarUsuarios(Session["pk_pro"].ToString());
            }


        }
    }
}