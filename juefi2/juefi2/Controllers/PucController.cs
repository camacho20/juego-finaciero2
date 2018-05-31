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
    public class PucController : ApiController
    {
        public PucModel puc = new PucModel();

        public bool Registrapuc(PucModel mod)
        {

            puc.registrarpuc(mod);
            return true;
        }

        public DataTable Consultapuc()
        {
            return puc.Consultarpuc();
        }
        public bool elimipuc(string eliregla)
        {
            return puc.eliminapuc(eliregla);
        }

        public bool pucExiste(string obj,int id)
        {
            return puc.Validarpuc(obj,id);
        }

        public bool editapuc(PucModel reglaedi)
        {
            return puc.editarpuc(reglaedi);
        }

        public DataTable buscar(string item)
        {
            return puc.buscar(item);
        }
        public bool copiarpuc(PucModel obje, int idpartida)
        {
            return puc.copiarpuc(obje,idpartida);
        }

       
        public DataTable consultarcopia(int idempreda)
        {
            
            return puc.consultarcopia(idempreda);
        }
        public DataTable buscarcopia(int idempreda,string item)
        {

            return puc.buscarcopia(idempreda,item);
        }

        public bool editacopiapuc(PucModel reglaedi)
        {
            return puc.editarcopiapuc(reglaedi);
        }
        public bool elimicopiapuc(string eliregla)
        {
            return puc.eliminacopiapuc(eliregla);
        }



    }
}