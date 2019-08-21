using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Hotelling.UserApiSave;

namespace Hotelling
{
    public partial class Oficinas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserApiSave.UserAPISoapClient API = new UserApiSave.UserAPISoapClient();

            ArrayOfString[] datos = API.list('O');
          
            DGOficinas.DataSource = datos.Select(arr => new
            {Oficina = arr[1],
            Telefono = arr[4],
            Direccion = arr[2],
            QTY_Asientos = arr[5]}).ToArray();
            DGOficinas.DataBind();
            
        }

        protected void DGOficinas_SelectedIndexChanged(object sender, EventArgs e)
        {
          //DGOficinas.SelectedRow

        }

    }
}