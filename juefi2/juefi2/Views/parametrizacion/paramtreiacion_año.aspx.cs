using juefi2.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace juefi2.Views.parametrizacion
{
    public partial class paramtreiacion_año : System.Web.UI.Page
    {
        ParametrizarVariableController vari = new ParametrizarVariableController();

        ValorPucYReglaController cop = new ValorPucYReglaController();
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnguardar_Click(object sender, EventArgs e)
        {
            
           
         
           
            
            vari.actualizar(1, Convert.ToDouble(txtuvt.Text));
            vari.actualizar(2, Convert.ToDouble(txtdtf.Text));
            vari.actualizar(3, Convert.ToDouble(txtsalrio.Text));
            vari.actualizar(4, Convert.ToDouble(txtrtfuente.Text));
            vari.actualizar(5, Convert.ToDouble(txtrtica.Text));
            vari.actualizar(6, Convert.ToDouble(txtiva.Text));
            vari.actualizar(7, Convert.ToDouble(Textiva22.Text));





            txtuvt.Text = "";
            Textiva22.Text = "";
            txtdtf.Text="";
            txtsalrio.Text="";
            txtiva.Text="";
            txtrtfuente.Text="";
            txtrtica.Text="";

        }
    }
}