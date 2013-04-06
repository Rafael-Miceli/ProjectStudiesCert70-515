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
            Response.Write("Page_PreInit");
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            Debug.WriteLine("Page_Init");
            Response.Write("Page_Init");
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            Debug.WriteLine("Page_PreRender");
            Response.Write("Page_PreRender");
        }

        protected void Page_UnLoad(object sender, EventArgs e)
        {
            Debug.WriteLine("Page_UnLoad");
            //Response.Write("Page_UnLoad");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Debug.WriteLine("Page_Load");
            Response.Write("Page_Load");

            if (ddlUserType.SelectedValue == "Guest")
            {
                lblPassword.Visible = false;
                txtPassword.Visible = false;

                lblUserName.Text = "E-mail addres";
                btnLogon.Text = "Visit";
            }
            else
            {
                lblPassword.Visible = true;
                txtPassword.Visible = true;

                lblUserName.Text = "Username:";
                btnLogon.Text = "Logon";
            }
        }

        protected void btnLogon_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void ddlUserType_Load(object sender, EventArgs e)
        {
            Debug.WriteLine("ddlUserType_Load");
        }

        protected void ddlUserType_PreRender(object sender, EventArgs e)
        {
            Debug.WriteLine("ddlUserType_PreRender");
        }

        protected void ddlUserType_Init(object sender, EventArgs e)
        {
            Debug.WriteLine("ddlUserType_Init");
        }
    }
}
