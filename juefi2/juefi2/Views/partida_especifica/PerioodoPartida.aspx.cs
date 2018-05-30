using juefi2.Controllers;
using juefi2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace juefi2.Views.partida_especifica
{
    public partial class PerioodoPartida : System.Web.UI.Page
    {
        PartidaController partida = new PartidaController();
        PartidaModel par = new PartidaModel();


        protected void Page_Load(object sender, EventArgs e)
        {
            llenarpartida(partida1);
        }

        protected void llenarpartida(DropDownList partida)
        {
            partida.DataSource = par.Consultarpartida();
            partida.DataValueField = "id_partida_general";
            partida.DataValueField = "nombre_partida";
            partida.DataBind();



        }



        protected void guardar_Click(object sender, EventArgs e)
        {
            

            if (fechaInicio.Value == "" || fechaFin.Value == "")
            {


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

          
            par.fecha_inicial = Convert.ToDateTime(fechaInicio.Value);
            par.fecha_final = Convert.ToDateTime(fechaFin.Value);

            partida.insertarperido(par, partida.consulidpartida(partida1.SelectedIndex.ToString()));

          


            Response.Write("<script> alert('Perido agregado'); </script>");


           
            fechaInicio.Value = "";
            fechaFin.Value = "";
            return;


        }






    }
}