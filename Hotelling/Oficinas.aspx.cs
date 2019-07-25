using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hotelling
{
    public partial class Oficinas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            UserApiSave.UserAPISoapClient API = new UserApiSave.UserAPISoapClient();

            //API.Save(tbName.Text, tbLastName.Text, tbID.Text, tbEmail.Text, tbCel.Text, tbCel.Text);


        }
    }
}