using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C2L1Exercise1
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnOk_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text != string.Empty)
            {
                Session["User"] = txtUserName.Text;
                Label welcome = (Label)Master.FindControl("Label1");
                welcome.Text = String.Format("Welcome {0}!", Session["User"]);
            }
        }
    }
}