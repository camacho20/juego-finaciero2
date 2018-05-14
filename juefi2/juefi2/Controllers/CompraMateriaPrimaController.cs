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

        public string variable(int variable)
        {

            return com.variable(variable); ;
        }
    }
}