using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C2L3Exercise1WebApplication
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblChosen.Text = string.Format("{0} at {1}", ddlChoice.SelectedValue, DateTime.Now.TimeOfDay.ToString());
        }
    }
}
