using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using BL;



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
        public void Save(String a, String b, String c, String d, String e, String f)
        {
            Reference nuevo = new Reference() { };
            nuevo.Save(a, b, c, d, e, f);
        }
    }
}
