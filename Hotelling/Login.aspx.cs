using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Hotelling.UserApiSave;

namespace Hotelling
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Perfil"] = null;
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            UserApiSave.UserAPISoapClient API = new UserApiSave.UserAPISoapClient();
            ArrayOfString test = API.validacion(txtUser.Text);
            Session["Perfil"] = test[0];

            if (test[0].Equals("Mp=True"))
            {

                Response.Redirect("Principal.aspx");
            }
            else {

                Response.Write("<script>alert('Login Fail');</script>");
            }

            


        }
    }
}