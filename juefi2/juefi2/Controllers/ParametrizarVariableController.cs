using juefi2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace juefi2.Controllers
{
    public class ParametrizarVariableController : ApiController
    {

        ParametrizarVariableModel para = new ParametrizarVariableModel();


        public bool actualizar(int id,double valor)
        {

            para.actualizarvariable(id,valor);
            return true;
        }


    }
}