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
    public class PartidaController : ApiController
    {
        PartidaModel parti = new PartidaModel();

        public bool registrarpartida(PartidaModel mod)
        {

            parti.registrarpartida(mod);
            return true;
        }

        public DataTable Consultarpartida()
        {
            return parti.Consultarpartida();
        }

        public int consulidpartida( string nomempresa)

        {

            return parti.idpartida(nomempresa);

        }


    }
}