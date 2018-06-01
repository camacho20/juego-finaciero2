using juefi2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace juefi2.Controllers
{
    public class ValorPucYReglaController : ApiController
    {
        ValorPucYReglaModel com = new ValorPucYReglaModel();

        public string variable(int variable)
        {

            return com.variable(variable); ;
        }
        public string codigopuc(int variable2)
        {

            return com.variablepuc(variable2);
        }

        public bool actuallizarpuc(int id,double valor)
        {
            return com.actualizarvariable(id,valor);
        }

        public double valorpucempresa(int id, int idempresa)
        {
            return com.valorpucempresa(id,idempresa);
        }

        public bool editarvalorpucempresa(double valor, int id, int idempresa)
        {

            return com.editarvalorpucempresa(valor,id,idempresa);
        }

    }
}