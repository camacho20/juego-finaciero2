using juefi2.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace juefi2.Views.reglas
{
    public partial class BalacePuc : System.Web.UI.Page
    {
        PucController pu = new PucController();

        protected void Page_Load(object sender, EventArgs e)
        {
            Bindata();
        }

        private void Bindata()
        {

            tablapuc.DataSource = pu.Consultapuc();
            tablapuc.DataBind();


        }


        protected void lbeditar_Command(object sender, CommandEventArgs e) {

            Response.Write("<script> alert('"+ e.CommandArgument+"'); </script>");




        }


    }
}