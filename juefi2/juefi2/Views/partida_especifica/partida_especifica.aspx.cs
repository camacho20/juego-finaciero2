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
      


        protected void Page_Load(object sender, EventArgs e)
        {
            
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
            Response.Redirect("../partida_especifica/AgregarEmpresaPartida.aspx");

            txtnumeroempresa.Text = "";
            txtnombrepartida.Text = "";
            fechaInicio.Value = "";
            fechaFin.Value = "";
            return;


        }

        //Asignacion de empresa

       

       

        

    }
}