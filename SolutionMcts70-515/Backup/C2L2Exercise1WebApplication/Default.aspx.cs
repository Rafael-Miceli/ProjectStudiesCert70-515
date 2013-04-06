using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C2L2Exercise1WebApplication
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session["theme"] != null)
            {
                Page.Theme = (string)Session["theme"];
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Dropdownlist1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Dropdownlist1.SelectedIndex > 0)
            {
                Session["theme"] = Dropdownlist1.SelectedValue;
            }

            Server.Transfer(Request.Path);
        }
    }
}
