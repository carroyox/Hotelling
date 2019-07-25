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
      
        public Reference()
        {

        }

        public void SaveUser(String tbName, String tbLastName, String tbID, String tbEmail, String tbCel, String tbCel2)
        {
            using (HotellingCon context = new HotellingCon())
            {
                var std = new Tbl_Usuarios()
                {
                    Nombre_Usuario = tbName,
                    Apellido_Usuario = tbLastName,
                    Identificacion_Usuario = tbID,
                    Email_Usuario = tbEmail,
                    Telefono_Personal = tbCel,
                    Telefono_Oficina = tbCel2,
                    Id_Oficina = 1,
                    Id_Perfil = 1
                };


                context.Tbl_Usuarios.Add(std);
                context.SaveChanges();
            }

        }






    }
}
