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
        String accesos = "Mp=0;Up=0;Op=0;SCp=0;SCp=0";
        public Reference()
        {

        }

        public void SaveUser(String name, String lastName, String ID, String email, String cel, String cel2)
        {
            using (HotellingCon context = new HotellingCon())
            {
                var std = new Tbl_Usuarios()
                {
                    Nombre_Usuario = name,
                    Apellido_Usuario = lastName,
                    Identificacion_Usuario = ID,
                    Email_Usuario = email,
                    Telefono_Personal = cel,
                    Telefono_Extension = cel2,
                    Id_Oficina = 1,
                    Id_Perfil = ""
                };


                context.Tbl_Usuarios.Add(std);
                context.SaveChanges();
            }

        }

        public void SaveOffice(String name, String address, String email, String phone, int QTY)
        {
            using (HotellingCon context = new HotellingCon())
            {
                var std = new Tbl_Oficinas()
                {
                    Nombre_Oficina = name,
                    Direccion_Oficina = address,
                    Email_Oficina = email,
                    Telefono_Oficina = phone,
                    Numero_Asientos = QTY

                };


                context.Tbl_Oficinas.Add(std);
                context.SaveChanges();
            }

        }


        public List<Tbl_Usuarios> lista()
        {
            List<Tbl_Usuarios> asd = new List<Tbl_Usuarios>();
            //List<String[]> retorno = new List<String[]>();

            using (HotellingCon context = new HotellingCon())
            {
                var ListaSQL = context.Tbl_Usuarios.Select(x => new { Nombre_Usuario = x.Nombre_Usuario, Identificacion_Usuario = x.Identificacion_Usuario }).ToList();

                if (ListaSQL != null)
                {
                    asd = ListaSQL.Select(x => new Tbl_Usuarios { Nombre_Usuario = x.Nombre_Usuario, Identificacion_Usuario = x.Identificacion_Usuario }).ToList();

                    //foreach (Tbl_Usuarios item in asd)
                    //{
                    //    Console.WriteLine(item.Nombre_Usuario);
                    //}
                }

                //var lista = from Usuarios in context.Tbl_Usuarios select Usuarios.Nombre_Usuario;
            }
            return asd;
        }



        public String validacion(string usr)
        {
            String val = accesos;
            using (HotellingCon con = new HotellingCon())
            {
                val = (con.Tbl_Usuarios.Where(x => x.Nombre_Usuario == usr).Select(x => x.Id_Perfil)).Single();////////pendiente de modificar
            }
            
           



            return val;
        }


    }
}
