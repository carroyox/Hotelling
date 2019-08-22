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
        protected void Page_Load(object sender, EventArgs e)
        {

            refresh();


        }



        protected void Save_Click(object sender, EventArgs e)
        {
            string permisos = string.Format("Mp={0};Up={1};Op={2};SAp={3};SSp={4}", Mp.Checked, Up.Checked, Op.Checked, SAp.Checked, SSp.Checked);

            ArrayOfString datos = new ArrayOfString { "User", TbName.Text, TbLastName.Text, TbId.Text, TbEmail.Text, TbCel.Text, TbExt.Text, DDLOficina.Text, permisos };
            UserApiSave.UserAPISoapClient API = new UserApiSave.UserAPISoapClient();

            API.Save(datos);
            refresh();
        }


        private void DataGridPersonas()
        {
            DGPersonas.DataSource = null;
            UserApiSave.UserAPISoapClient API = new UserApiSave.UserAPISoapClient();

            ArrayOfString[] datos = API.list('U');
            DGPersonas.DataSource = datos.Select(arr => new
            {
                Nombre = arr[0],
                Apellido = arr[1],
                Email = arr[3],
                Telefono = arr[4]

            }).ToArray();
            DGPersonas.DataBind();

        }


        private void refresh() {
            UserApiSave.UserAPISoapClient API = new UserApiSave.UserAPISoapClient();
            ArrayOfString datos = API.Oficinas();
            DDLOficina.DataSource = datos;
            DDLOficina.DataBind();
            DataGridPersonas();


        }
    }
}