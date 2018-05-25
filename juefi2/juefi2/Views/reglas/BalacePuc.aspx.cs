using juefi2.Controllers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace juefi2.Views.reglas
{
    public partial class BalacePuc : System.Web.UI.Page
    {
        PucController pu = new PucController();
        public DataTable datablaConsulta = new DataTable();
        public DataRow darowConsulta;


        protected void Page_Load(object sender, EventArgs e)
        {
            Bindata();
        }

        private void Bindata()
        {

            tablapuc.DataSource = pu.Consultapuc();
            tablapuc.DataBind();


        }


        protected void linkbotonBalance_Command(object sender, CommandEventArgs e)
        {
            int filaTablaBalance = Int32.Parse(e.CommandArgument.ToString());



            //Session["filaTablaBalance"] = filaTablaBalance;

            //datablaConsulta= pu.Consultapuc();

            //darowConsulta = datablaConsulta.Rows[filaTablaBalance];

            codigo.Text = Convert.ToString(filaTablaBalance);

            //txtValor.Text= Convert.ToDecimal(darowConsulta["valor"]).ToString("N1");
            //descrip1.Value = darowConsulta["descripcion"].ToString();

            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "ModalBalance();", true);

            


        }





    }
}