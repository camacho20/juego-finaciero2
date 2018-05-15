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
    public class CompraMateriaPrimaController : ApiController
    {
        Compra_materia_primaModel com = new Compra_materia_primaModel();

        public bool debito(Compra_materia_primaModel mod)
        {

            com.registrarCompra_materia_prima_contado_debita(mod);
            return true;
        }

        public bool credito(Compra_materia_primaModel mod)
        {

            com.registrarCompra_materia_prima_contado_credito(mod);
            return true;
        }

    }
}