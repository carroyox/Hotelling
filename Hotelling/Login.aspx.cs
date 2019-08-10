using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Hotelling
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            UserApiSave.UserAPISoapClient API = new UserApiSave.UserAPISoapClient();
            string test = API.validacion(txtUser.Text);
            Session["Perfil"] = test;
            if (test.Equals("Mp=1"))
            {
                Response.Redirect("Principal.aspx");
            }

            


        }
    }
}