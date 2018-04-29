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
    public class ActivosController : ApiController
    {
        public ActivosModel actico = new ActivosModel();
        public DataTable Consultaractivos()
        {
            return actico.Consultaractivos();
        }




    }
}