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


        //public List<Tbl_Usuarios> lista()
        //{
        //    List<Tbl_Usuarios> asd = new List<Tbl_Usuarios>();
        //    //List<String[]> retorno = new List<String[]>();

        //    using (HotellingCon context = new HotellingCon())
        //    {
        //        var ListaSQL = context.Tbl_Usuarios.Select(x => new { Nombre_Usuario = x.Nombre_Usuario, Identificacion_Usuario = x.Identificacion_Usuario }).ToList();

        //        if (ListaSQL != null)
        //        {
        //            asd = ListaSQL.Select(x => new Tbl_Usuarios { Nombre_Usuario = x.Nombre_Usuario, Identificacion_Usuario = x.Identificacion_Usuario }).ToList();

        //            //foreach (Tbl_Usuarios item in asd)
        //            //{
        //            //    Console.WriteLine(item.Nombre_Usuario);
        //            //}
        //        }

        //        //var lista = from Usuarios in context.Tbl_Usuarios select Usuarios.Nombre_Usuario;
        //    }
        //    return asd;
        //}
        public List<String[]> datosUsuarios()
        {
            List<String[]> retorno = new List<string[]>();
            List<Tbl_Usuarios> lista = new List<Tbl_Usuarios>();

            using (HotellingCon context = new HotellingCon())
            {
                lista = context.Tbl_Usuarios.Select(x => x).ToList();

            }

            foreach (Tbl_Usuarios tabla in lista)
            {
                String[] datos = new string[8];
                datos[0] = tabla.Nombre_Usuario;
                datos[1] = tabla.Apellido_Usuario;
                datos[2] = tabla.Identificacion_Usuario;
                datos[3] = tabla.Email_Usuario;
                datos[4] = tabla.Telefono_Personal;
                datos[5] = tabla.Telefono_Extension;
                datos[6] = tabla.Id_Oficina.ToString();
                datos[7] = tabla.Id_Perfil;
                retorno.Add(datos);
            }
            return retorno;

        }
        public List<String[]> datosOficinas()
        {
            List<String[]> retorno = new List<string[]>();
            List<Tbl_Oficinas> lista = new List<Tbl_Oficinas>();

            using (HotellingCon context = new HotellingCon())
            {
                lista = context.Tbl_Oficinas.Select(x => x).ToList();

            }

            foreach (Tbl_Oficinas tabla in lista)
            {
                String[] datos = new string[6];
                datos[0] = tabla.Id_Oficina.ToString();
                datos[1] = tabla.Nombre_Oficina;
                datos[2] = tabla.Direccion_Oficina;
                datos[3] = tabla.Email_Oficina;
                datos[4] = tabla.Telefono_Oficina;
                datos[5] = tabla.Numero_Asientos.ToString();
                retorno.Add(datos);
            }
            return retorno;

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
