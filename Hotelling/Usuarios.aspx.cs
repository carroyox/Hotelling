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
            string[] item = { tbID.Text, tbName.Text, tbLastName.Text, tbCel.Text, tbEmail.Text };
            lista.Add(item);
            list();
        }

        protected void list()
        {
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