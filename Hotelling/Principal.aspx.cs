using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hotelling
{
    public partial class Principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Perfil"] == null || Session["Perfil"].ToString().Equals("Mp=false"))
                {
                    Response.Write("<script>alert('Login Fail');</script>");

                    Response.Redirect("Login.aspx");
                }
                else 
                {

                    Response.Write("<script>alert('Login Succesfull');</script>");

                }
                





            }
        }
    }
}