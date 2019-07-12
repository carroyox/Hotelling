using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAL;

namespace BL
{
    public class Reference
    {
        test nuevo = new test();
        public Reference()
        {

        }

        public void salvar(String tbName, String tbLastName, String tbID, String tbEmail, String tbCel, String tbCel2)
        {
            nuevo.saar( tbName,  tbLastName,  tbID,  tbEmail,  tbCel, tbCel2);

        }






    }
}
