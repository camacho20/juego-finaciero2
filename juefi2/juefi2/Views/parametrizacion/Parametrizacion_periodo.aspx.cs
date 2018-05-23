using juefi2.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace juefi2.Views.parametrizacion
{
    public partial class Parametrizacion_periodo : System.Web.UI.Page
    {
        ParametrizarPeriodoControllers vari = new ParametrizarPeriodoControllers();
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnguardar_Click(object sender, EventArgs e)
        {
            vari.actualizar(1, Convert.ToDouble(txtfeo.Text));
            vari.actualizar(2, Convert.ToDouble(txtfactor.Text));
            vari.actualizar(3, Convert.ToDouble(txtdemandaestimada.Text));
            vari.actualizar(4, Convert.ToDouble(txtmulta.Text));
            vari.actualizar(5, Convert.ToDouble(TxtofertaEstimada.Text));
            vari.actualizar(6, Convert.ToDouble(txtusura.Text));
            vari.actualizar(7, Convert.ToDouble(txtelasti11.Text));
            vari.actualizar(8, Convert.ToDouble(txtelasti22.Text));
            vari.actualizar(9, Convert.ToDouble(txtelasti333.Text));

            txtfeo.Text="";
            txtfactor.Text = "";
            txtdemandaestimada.Text = "";
            txtmulta.Text = "";
            TxtofertaEstimada.Text = "";
            txtusura.Text = "";
            txtelasti11.Text = "";
            txtelasti22.Text = "";
            txtelasti333.Text = "";

        }
    }
}