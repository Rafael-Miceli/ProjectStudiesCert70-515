using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C2L1Exercise1WebApplication
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session["Template"] != null)
            {
                MasterPageFile = String.Format("~/{0}.master", (string)Session["Template"]);
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnOk_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text != string.Empty)
            {
                Session["User"] = txtUserName.Text;
                Label welcome = (Label)Master.FindControl("lblWelcome");
                welcome.Text = String.Format("Welcome {0}!", Session["User"]);
            }
        }

        protected void ddlColor_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["Template"] = ddlColor.SelectedValue;
            Server.Transfer(Request.Path);
        }
    }
}