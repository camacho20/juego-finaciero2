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
    public class ReglaController : ApiController
    {

        public ReglaModel re = new ReglaModel();

        public bool Registraregla(ReglaModel mod)
        {

            re.registraregla(mod);
            return true;
        }

        public DataTable Consultaregla()
        {
            return re.Consultarregla();
        }
        public bool eliminaregla(string eliregla)
        {
            return re.eliminaregla(eliregla);
        }

        public bool reglaExiste(string obj)
        {
            return re.Validarregla(obj);
        }

        public bool editarregla(ReglaModel reglaedi)
        {
            return re.editarregla(reglaedi);
        }

       

    }
}