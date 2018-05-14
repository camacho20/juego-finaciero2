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
    public partial class EstuReglas : System.Web.UI.Page
    {
        ReglaController emp = new ReglaController();
        
       

        protected void Page_Load(object sender, EventArgs e)
        {
            Bindata();
        }


        private void Bindata()
        {
        
            tabla.DataSource = emp.Consultaregla();
            tabla.DataBind();
            


        }



    }
}