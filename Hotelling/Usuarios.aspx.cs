using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Hotelling.UserApiSave;

namespace Hotelling
{
    public partial class Usuarios : System.Web.UI.Page
    {
        List<string[]> lista = new List<string[]>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
          
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            UserApiSave.UserAPISoapClient API = new UserApiSave.UserAPISoapClient();

            //API.Save(tbName.Text, tbLastName.Text, tbID.Text, tbEmail.Text, tbCel.Text, tbCel.Text);
            
        }

        protected void list()
        {
            string[] item = { tbID.Text, tbName.Text, tbLastName.Text, tbCel.Text, tbEmail.Text };
            lista.Add(item);
            list();





            TableRow row = new TableRow();
            foreach (string[] g in lista)
            {
                foreach (String c in g)
                {
                    TableCell cell = new TableCell();
                    cell.Text = c;
                    row.Cells.Add(cell);
                }
                userList.Rows.Add(row);
            }
        }
    }
}