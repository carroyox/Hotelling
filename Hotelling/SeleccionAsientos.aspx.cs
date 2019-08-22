using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Hotelling.UserApiSave;


namespace Hotelling
{
    public partial class SeleccionAsientos : System.Web.UI.Page
    {
        List<string[]> asd = new List<string[]>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UserApiSave.UserAPISoapClient API = new UserApiSave.UserAPISoapClient();
                ArrayOfString datos = API.Oficinas();
                Oficina.DataSource = datos;
                Oficina.DataBind();
            }
        }

        protected void Oficina_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Oficina.SelectedIndex != 0)
            {
                UserApiSave.UserAPISoapClient API = new UserApiSave.UserAPISoapClient();
                ArrayOfString[] array = API.ReservaDatos(Oficina.Text);
                foreach (ArrayOfString c in array)
                {
                    string[] test = new string[6];
                    int i = 0;
                    foreach (string a in c)
                    {
                        test[i] = a;
                        i++;
                    }
                    i = 0;
                    asd.Add(test);
                }


            }
        }

     

        protected void Button1_Click(object sender, EventArgs e)
        {
            ArrayOfString datos = new ArrayOfString { "Reserva","1","2", inicio.Value, fin.Value};
            UserApiSave.UserAPISoapClient API = new UserApiSave.UserAPISoapClient();
            API.Save(datos);
        }
    }
}