using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Hotelling.UserApiSave;


namespace Hotelling
{
    public partial class Asientos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UserApiSave.UserAPISoapClient API = new UserApiSave.UserAPISoapClient();
                ArrayOfString datos = API.Oficinas();
                DDLOficina.DataSource = datos;
                DDLOficina.DataBind();
            }
        }

        protected void DDLOficina_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DDLOficina.SelectedIndex != 0)
            {
                string test = DDLOficina.Text;
                UserApiSave.UserAPISoapClient API = new UserApiSave.UserAPISoapClient();
                ArrayOfString datos = API.Asientos(DDLOficina.Text);
                DDLAsiento.DataSource = null;//for clean previous data on combobox
                DDLAsiento.DataSource = datos;
                DDLAsiento.DataBind();

            }
        }


        protected void Submit_Clicked(object sender, EventArgs e)
        {
            if (DDLOficina.SelectedIndex != 0)
            {
                if (DDLAsiento.SelectedIndex != 0)
                {

                    UserApiSave.UserAPISoapClient API = new UserApiSave.UserAPISoapClient();


                    ArrayOfString data = new ArrayOfString {
                ChkFijo.Checked.ToString(),
                ChkPhone.Checked.ToString(),
                ChkMonitor.Checked.ToString(),
                ChkKM.Checked.ToString(),
                ChkEspecial.Checked.ToString()};
                    API.seatsSave(Convert.ToInt16(DDLAsiento.Text), data);
                }
            }
        }

        protected void DDLAsiento_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DDLOficina.SelectedIndex != 0)
            {
                if (DDLAsiento.SelectedIndex != 0)
                {
                    UserApiSave.UserAPISoapClient API = new UserApiSave.UserAPISoapClient();
                    ArrayOfString features = API.seats(Convert.ToInt16(DDLAsiento.Text));

                    ChkFijo.Checked = Convert.ToBoolean(features[0]);
                    ChkPhone.Checked = Convert.ToBoolean(features[1]);
                    ChkMonitor.Checked = Convert.ToBoolean(features[2]);
                    ChkKM.Checked = Convert.ToBoolean(features[3]);
                    ChkEspecial.Checked = Convert.ToBoolean(features[4]);
                }
            }


        }
    }
}