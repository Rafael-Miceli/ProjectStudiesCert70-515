using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C3L2Exercise1WebApplication
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Exercise 1
            /*
            if (ViewState["clicks"] != null)
            {
                ViewState["clicks"] = (int)ViewState["clicks"] + 1;
            }
            else
            {
                ViewState["clicks"] = 1;
            }
            */


            //Exercise 2
            /*
            int clicks = 0;

            int.TryParse(HiddenField1.Value, out clicks);

            clicks++;

            HiddenField1.Value = Server.HtmlEncode(clicks.ToString());
             */


            //Exercise 3
            /*
            //Read the cookie clicks and increment
            int cookieClicks;
            if (Request.Cookies["clicks"] != null)
            {
                cookieClicks = int.Parse(Request.Cookies["clicks"].Value) + 1;
            }
            else
            {
                cookieClicks = 1;
            }

            // Save the cookie to be returned in the next visit
            Response.Cookies["clicks"].Value = cookieClicks.ToString();
            */
            
            //Label1.Text = "Cookie clicks: " + cookieClicks.ToString();



            //Exercise 4
            if (!IsPostBack)
            {
                //Read the query string
                int queryClicks;

                if (Request.QueryString["clicks"] != null)
                {
                    queryClicks = int.Parse(Request.QueryString["clicks"]) + 1;
                }
                else
                {
                    queryClicks = 1;
                }

                //Define the query string in the hyperlink
                Hyperlink1.NavigateUrl += "?clicks=" + queryClicks.ToString();

                Label1.Text = "Query clicks: " + queryClicks.ToString();
            }
            
        }
    }
}
