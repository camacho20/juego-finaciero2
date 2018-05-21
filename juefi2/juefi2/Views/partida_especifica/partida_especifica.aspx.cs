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
    public partial class partida_especifica : System.Web.UI.Page
    {
        PartidaController partida = new PartidaController();
        PartidaModel par = new PartidaModel();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void guardar_Click(object sender, EventArgs e)
        {
            
        }
    }
}