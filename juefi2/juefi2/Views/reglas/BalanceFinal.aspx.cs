using juefi2.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace juefi2.Views.reglas
{
    public partial class BalanceFinal : System.Web.UI.Page
    {
        PucController pu = new PucController();
        int idempresa;
        EmpresaController empr = new EmpresaController();


        protected void Page_Load(object sender, EventArgs e)
        {
            Bindata();
        }

        private void Bindata()
        {
            idempresa = int.Parse(empr.llamaridempresa(int.Parse(Session["id_usuario"].ToString())));
            PUC.DataSource = empr.pucfinalempresa(idempresa);
            PUC.DataBind();


        }

    }
}