using BL;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Services;



namespace webAPI
{
    /// <summary>
    /// Summary description for UserAPI
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class UserAPI : System.Web.Services.WebService
    {

        [WebMethod]
        public void Save(String[] datos)
        {
            Reference nuevo = new Reference() { };
            switch (datos[0])
            {
                case "User":
                    nuevo.SaveUser(datos[1], datos[2], datos[3], datos[4], datos[5], datos[6], datos[7], datos[8]);
                    break;
                case "Office":
                    nuevo.SaveOffice(datos[1], datos[2], datos[3], datos[4], Convert.ToInt16(datos[5]));
                    break;
                case "Reserva":
                    nuevo.ReservedSeat(datos[1], datos[2], datos[3], datos[4]);
                    break;


            }


        }


        [WebMethod]

        public List<String[]> list(Char X)
        {

            Reference nuevo = new Reference() { };
            List<String[]> Datos = null;
            if (X.Equals('O'))
            {
                Datos = nuevo.datosOficinas();
            }
            else if (X.Equals('U'))
            {
                Datos = nuevo.datosUsuarios();
            }


            return Datos;

        }

        [WebMethod]
        public String[] validacion(string usr)
        {
            Reference nuevo = new Reference() { };


            string[] permisos = nuevo.validacion(usr).Split(';');


            return permisos;
        }

        [WebMethod]
        public String[] Oficinas()
        {
            Reference nuevo = new Reference() { };
            return nuevo.listOficinas();
        }

        [WebMethod]
        public List<String> Asientos(String name)
        {
            Reference nuevo = new Reference() { };
            return nuevo.listAsientos(name);
        }

        [WebMethod]
        public String[] seats(int id)
        {
            Reference nuevo = new Reference() { };

            string[] features = nuevo.SeatsFeaturing(id).Split(';');

            return features;
        }


        [WebMethod]
        public void seatsSave(int id, string[] data)
        {
            Reference nuevo = new Reference() { };

            nuevo.SaveSeat(id, data);


        }

        [WebMethod]
        public List<String[]> ReservaDatos(String name)
        {
            Reference nuevo = new Reference() { };
            return nuevo.DatosReserva(name);
        }








    }
}
