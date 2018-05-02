﻿using juefi2.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace juefi2.Controllers
{
    public class PasivopatrimmonioController : ApiController
    {
        public PasivopatrimonioModel pasivo = new PasivopatrimonioModel();
        public DataTable Consultarpasivo()
        {
            return pasivo.Consultaractivos();
        }

        public bool editarpasicorrientes(PasivopatrimonioModel pasicorrientesedi)
        {
            return pasivo.editarpasivoscorrientes(pasicorrientesedi);
        }
        public bool editarpasilargo(PasivopatrimonioModel pasilargoedi)
        {
            return pasivo.editarpasivoslargoplazo(pasilargoedi);
        }
        public bool editarpatrimonio(PasivopatrimonioModel patriedi)
        {
            return pasivo.editarpatrimonio(patriedi);
        }


    }
}
