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
    public partial class reglas : System.Web.UI.Page
    {
        ReglaController re = new ReglaController();
        ReglaModel reg = new ReglaModel();
        public DataTable datablaConsulta = new DataTable();
        public DataRow darowConsulta;
        protected void Page_Load(object sender, EventArgs e)
        {

            datablaConsulta = re.Consultaregla();
            if (datablaConsulta.Rows.Count > 0)
            {
                darowConsulta = datablaConsulta.Rows[0];
            }




        }

        protected void Guardar_Click(object sender, EventArgs e)
        {

            try
            {

                reg.descrip = descrip1.Value.ToString();
                reg.valor = Int32.Parse(valor.Text); 
                reg.idusuario =1;

                if (valor.Text == "" || descrip1.Value.ToString() == "")
                {
                    Response.Write("<script> alert('Los  campos estan vacios'); </script>");
                    return;


                }
                if (descrip1.Value.ToString().Length < 50)
                {

                    Response.Write("<script> alert('Esribe almenos 100 caracteres'); </script>");
                    return;
                }


                if (re.Registraregla(reg) == true)
                {
                       descrip1.Value = string.Empty;
                    valor.Text = string.Empty;
                    datablaConsulta = re.Consultaregla();
                }
                else
                {


                    Response.Write("<script> alert('Regla ya existe '); </script>");
                    return;
                }









            }
            catch (Exception)
            {

            }
        }


    

        protected void Button1_Click(object sender, EventArgs e)
  {

            reg.descrip = descrip2.Value.ToString();
            reg.valor = Int32.Parse(id1.Text);
            reg.idregla= Int32.Parse(editar.Text); ;



            if (id1.Text == "" || descrip2.Value.ToString() == "" || descrip2.Value.ToString() == "")
            {
                Response.Write("<script> alert('Los  campos estan vacios'); </script>");
                return;


            }
            if (descrip2.Value.ToString().Length < 50)
            {

                Response.Write("<script> alert('Esribe almenos 50 caracteres'); </script>");
                datablaConsulta = re.Consultaregla();

                return;
            }

            if (re.reglaExiste(reg.idregla) == true)
            {

                re.editarregla(reg.descrip,reg.valor, reg.idregla);
                id1.Text = string.Empty;
                descrip2.Value= string.Empty;
                datablaConsulta = re.Consultaregla();
                Response.Write("<script> alert('La regla ha sido editada'); </script>");
          


                return;


            }
            else
            {
               
                Response.Write("<script> alert('Regla  no existe'); </script>");
                return;


            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            
         
        }

       
    }
}