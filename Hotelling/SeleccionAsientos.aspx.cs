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
            
        }


    }
}