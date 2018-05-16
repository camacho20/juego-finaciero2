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
    public class MovimientoController : ApiController
    {
        MovimientoModel com = new MovimientoModel();

        public bool debito(MovimientoModel mod)
        {

            com.debita(mod);
            return true;
        }

        public bool credito(MovimientoModel mod)
        {

            com.acredita(mod);
            return true;
        }

        public DataTable consultarmovimiento()
        {
            return com.mostrarmovimiento();
        }


    }
}