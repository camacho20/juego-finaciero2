using juefi2.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace juefi2.Controllers
{
    public class ActivarCompraController : ApiController
    {
        ActivarCompraModel acti = new ActivarCompraModel();
        public DataTable Consultarofertas()
        {
            return acti.ofertasdecompra();
        }

        public string promedio()
        {
          return acti.promedio_oferta();
        }

        public string pametros_año (int variable)
        {

            return acti.valor_año(variable); ;
        }
        public string pametros_periodo(int variable)
        {

            return acti.valor_periodo(variable); ;
        }

        public bool activarcompra()
        {


            return acti.activarcompra();
        }


    }
}