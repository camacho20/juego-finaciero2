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
    public class EmpresaController : ApiController
    {
        EmpresaModel emp = new EmpresaModel();
        public bool registro_empresa(EmpresaModel mod)
        {

            emp.registrarempresa(mod);
            return true;
        }

        public bool reusuario_empresa(int id, int empresa)
        {

            emp.registrarempresausuario(id,empresa);
            return true;
        }

        public string llamaridempresa(int id)

        {

            return emp.llamaridempresa(id);
           
        }

        public DataTable llamarinombre()

        {

            return emp.Consultarnombreusu();

        }




    }
}