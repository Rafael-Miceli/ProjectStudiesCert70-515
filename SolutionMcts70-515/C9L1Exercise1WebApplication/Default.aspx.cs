using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C9L1Exercise1WebApplication
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            SqlDataSourceNwd.Insert();
            GridView1.DataBind();

            System.Threading.Thread.Sleep(2000);

            TextBoxCity.Text = "";
            TextBoxCompany.Text = "";
            TextBoxContact.Text = "";
            TextBoxPhone.Text = "";
        }

        protected void Unnamed2_Tick(object sender, EventArgs e)
        {
            if (img.ImageUrl == "image/hprichbg16.jpg")
            {
                img.ImageUrl = "image/hprichbg14.jpg";
            }
            else
            {
                img.ImageUrl = "image/hprichbg16.jpg";
            }
        }
    }
}
