using juefi2.Controllers;
using juefi2.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace juefi2.Views.empresa
{
    public partial class Emepresa2 : System.Web.UI.Page
    {
        public DataTable datanombre = new DataTable();
        EmpresaController empr = new EmpresaController();
        EmpresaModel emp = new EmpresaModel();
        MovimientoController ofer = new MovimientoController();
         public DataRow dr;

        protected void Page_Load(object sender, EventArgs e)
        {

            datanombre = empr.llamarinombre();
            StringBuilder sb = new StringBuilder();
            sb.Append("<script>");
            sb.Append(" var SourceFromDataBase= [");

            string item = "";
            foreach (DataRow dr in datanombre.Tables[0].Rows)
            {
                if (item != "")
                    item = ",";
                sb.Append(item + "{label:\"" + dr["label"].ToString() + "\",value:\"" + dr["value"] + "\"}");
                item = ",";
            }

            sb.Append("];");
            sb.Append("</script>");




            ltlSourceFromDataBase.Text = "";
        }

        
    }
}