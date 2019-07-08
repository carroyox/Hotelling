using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hotelling
{
    public partial class Usuarios : System.Web.UI.Page
    {
        List<string[]> lista = new List<string[]>();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string[] list = {tbName.Text, tbLastName.Text, tbID.Text, tbEmail.Text };
            lista.Add(list);
            
        }
    }
}