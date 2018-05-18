using juefi2.Models.BD;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace juefi2.Controllers
{
    public class ParametrizarPeriodoControllers
    {
        parametrizacionPeriodoModel paraperi = new parametrizacionPeriodoModel();
        public bool actualizar(int id, double valor)
        {

            paraperi.actualizarvariable(id, valor);
            return true;
        }



    }
}