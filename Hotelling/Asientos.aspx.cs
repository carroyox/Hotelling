using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Hotelling.UserApiSave;


namespace Hotelling
{
    public partial class Asientos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UserApiSave.UserAPISoapClient API = new UserApiSave.UserAPISoapClient();
                ArrayOfString datos = API.Oficinas();
                DDLOficina.DataSource = datos;
                DDLOficina.DataBind();
            }
        }

        protected void DDLOficina_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DDLOficina.SelectedIndex != 0)
            {
                string test = DDLOficina.Text;
                UserApiSave.UserAPISoapClient API = new UserApiSave.UserAPISoapClient();
                ArrayOfString datos = API.Asientos(DDLOficina.Text);
                DDLAsiento.DataSource = null;//for clean previous data on combobox
                DDLAsiento.DataSource = datos;
                DDLAsiento.DataBind();
            }
        }
    }
}