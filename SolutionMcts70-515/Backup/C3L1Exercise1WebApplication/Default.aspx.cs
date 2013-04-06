using System;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C3L1Exercise1WebApplication
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            Debug.WriteLine("Page_PreInit");
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            Debug.WriteLine("Page_Init");
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            Debug.WriteLine("Page_PreRender");
        }

        protected void Page_UnLoad(object sender, EventArgs e)
        {
            Debug.WriteLine("Page_UnLoad");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Debug.WriteLine("Page_Load");
        }

        protected void btnLogon_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}
