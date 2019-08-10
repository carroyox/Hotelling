using BL;
using System;
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
            nuevo.lista();


            switch (datos[0])
            {
                case "User":
                    nuevo.SaveUser(datos[1], datos[2], datos[3], datos[4], datos[5], datos[6]);
                    break;
                case "Office":
                    //nuevo.SaveOffice(datos[1], datos[2], datos[3], datos[4]);
                    break;
                case "Perfil":
                    break;



            }


        }


        [WebMethod]

        public void list()
        {
            Reference nuevo = new Reference() { };


        }

        [WebMethod]
        public String validacion(string usr)
        {
            Reference nuevo = new Reference() { };

          
            string[] permisos = nuevo.validacion(usr).Split(';');
        

            return permisos[0];
        }
    }
}
