using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAL;
using System.Data.Entity;

namespace BL
{
    public class Reference
    {
        String accesos = "Mp=False;Up=False;Op=False;SAp=False;SSp=False";
        public Reference()
        {

        }

        public void SaveUser(String name, String lastName, String ID, String email, String cel, String ext, String Oficina, String permisos)
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
                    Telefono_Extension = ext,
                    Id_Oficina = (context.Tbl_Oficinas.Where(x => x.Nombre_Oficina == Oficina).Select(x => x.Id_Oficina)).Single(),
                    Id_Perfil = permisos
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
            SaveAsientos(name, QTY);
        }

        private void SaveAsientos(String Nombre, int QTY)
        {

            using (HotellingCon context = new HotellingCon())
            {
                int idOficina = (context.Tbl_Oficinas.Where(x => x.Nombre_Oficina == Nombre).Select(x => x.Id_Oficina)).Single();

                for (int i = 0; i <= QTY; i++)
                {
                    var std = new Tbl_Asientos()
                    {
                        Id_oficina = idOficina,
                        Es_Fijo = false,
                        Tiene_Telefono = false,
                        Tiene_Monitor = false,
                        Tiene_Teclado_Mouse = false,
                        Es_Especial = false


                    };


                    context.Tbl_Asientos.Add(std);
                    context.SaveChanges();
                }
            }


        }

        public void ReservedSeat(String Asiento, String Usuario, String Inicio, String Fin)
        {
            using (HotellingCon context = new HotellingCon())
            {
                var std = new Tbl_AsignacionAsientos()
                {
                    Id_Asiento = Convert.ToInt16(Asiento),
                    Id_Usuario = Convert.ToInt16(Usuario),
                    Fecha_Inicio = Convert.ToDateTime(Inicio),
                    Fecha_Final = Convert.ToDateTime(Fin),

                };

                context.Tbl_AsignacionAsientos.Add(std);
                context.SaveChanges();

            }

        }


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

        public String[] listOficinas()
        {
            String[] retorno = null;
            using (HotellingCon context = new HotellingCon())
            {

                retorno = context.Tbl_Oficinas.Select(x => x.Nombre_Oficina).ToArray();

            }


            return retorno;
        }
        public List<string> listAsientos(String Nombre)
        {

            List<string> retorno = new List<string>();

            using (HotellingCon context = new HotellingCon())
            {


                var test = context.Tbl_Asientos.Join(context.Tbl_Oficinas,
                    asien => asien.Id_oficina,
                    offi => offi.Id_Oficina,
                    (asien, offi) => new { asien.Id_Asiento, offi })
                    .Where(x => x.offi.Nombre_Oficina == Nombre).ToArray();

                foreach (var c in test)
                {
                    retorno.Add(c.Id_Asiento.ToString());


                }


            }


            return retorno;
        }

        public String SeatsFeaturing(int Id)
        {

            string retorno = "";

            using (HotellingCon con = new HotellingCon())
            {
                var val = con.Tbl_Asientos.Where(x => x.Id_Asiento == Id).ToArray();


                foreach (Tbl_Asientos tabla in val)
                {
                    retorno = string.Format("{0};{1};{2};{3};{4}",
                        tabla.Es_Fijo,
                        tabla.Tiene_Telefono,
                        tabla.Tiene_Monitor,
                        tabla.Tiene_Teclado_Mouse,
                        tabla.Es_Especial);
                }



            }


            return retorno;


        }

        public void SaveSeat(int Id, String[] data)
        {
            using (HotellingCon context = new HotellingCon())
            {
                var val = context.Tbl_Asientos.SingleOrDefault(x => x.Id_Asiento == Id);
                if (val != null)
                {
                    val.Es_Fijo = Convert.ToBoolean(data[0]);
                    val.Tiene_Telefono = Convert.ToBoolean(data[1]);
                    val.Tiene_Monitor = Convert.ToBoolean(data[2]);
                    val.Tiene_Teclado_Mouse = Convert.ToBoolean(data[3]);
                    val.Es_Especial = Convert.ToBoolean(data[4]);
                    context.SaveChanges();
                }


            }
        }

        public List<string[]> DatosReserva(String Nombre)
        {

            List<string[]> retorno = new List<string[]>();

            using (HotellingCon context = new HotellingCon())
            {


                var test = context.Tbl_Asientos.Join(context.Tbl_Oficinas,
                    asien => asien.Id_oficina,
                    offi => offi.Id_Oficina,
                    (asien, offi) => new { asien, offi })
                    .Where(x => x.offi.Nombre_Oficina == Nombre).ToArray();

                foreach (var c in test)
                {
                    string[] datos = new string[6];

                    datos[0] = c.asien.Id_Asiento.ToString();
                    datos[1] = c.asien.Es_Fijo.ToString();
                    datos[2] = c.asien.Tiene_Telefono.ToString();
                    datos[3] = c.asien.Tiene_Monitor.ToString();
                    datos[4] = c.asien.Tiene_Teclado_Mouse.ToString();
                    datos[5] = c.asien.Es_Especial.ToString();
                    retorno.Add(datos);
                }


            }


            return retorno;
        }


    }
}
