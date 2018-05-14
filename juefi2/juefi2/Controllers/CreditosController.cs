using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace juefi2.Controllers
{
    public class CreditosController : ApiController

    {
        //cambiar en base de datos
        double cuota;
        double amortizacion2;
        double intereses;
        double mvs =  Math.Pow((1 +0.3102),(1 / 12)) - 1;
        double saldo;

        public double cuotamen(double monto, double meses) {

            cuota = monto*(mvs*(1+ Math.Pow(mvs,meses )));


            return cuota;
     }



        public double interes(double monto)
        {

            intereses = monto * mvs;


            return intereses;

        }


        public double amortizacion(double monto,int meses)
        {

            amortizacion2 = cuotamen(monto, meses) - interes(monto);



            return amortizacion2;

        }

        public double saldofinal(double monto, int meses) {

           saldo=monto- amortizacion( monto,  meses);


            return saldo;

        }
       



    }
}