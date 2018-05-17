using juefi2.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace juefi2.Views.parametrizacion
{
    public partial class paramtreiacion_variables : System.Web.UI.Page
    {
        ParametrizarVariableController vari = new ParametrizarVariableController();

        ValorPucYReglaController cop = new ValorPucYReglaController();
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnguardar_Click(object sender, EventArgs e)
        {
            vari.actualizar(1,Convert.ToDouble(txtmulta.Text));
            vari.actualizar(2, Convert.ToDouble(TxtofertaEstimada.Text));
            vari.actualizar(3, Convert.ToDouble(txtfeo.Text));
            vari.actualizar(4, Convert.ToDouble(txtdemandaestimada.Text));
            vari.actualizar(5, Convert.ToDouble(txtfactor.Text));
            vari.actualizar(6, Convert.ToDouble(txtuvt.Text));
            vari.actualizar(7, Convert.ToDouble(txtea.Text));
            vari.actualizar(9, Convert.ToDouble(txtdtf.Text));
            vari.actualizar(10, Convert.ToDouble(txtsalrio.Text));
            cop.actuallizarpuc(40, Convert.ToDouble(txtiva.Text));
            cop.actuallizarpuc(60, Convert.ToDouble(txtdecuento.Text));
            cop.actuallizarpuc(41, Convert.ToDouble(txtrtfuente.Text));
            cop.actuallizarpuc(42, Convert.ToDouble(txtrtica.Text));


        }
    }
}