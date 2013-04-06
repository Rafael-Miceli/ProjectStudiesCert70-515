using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C4L1Exercise1WebApplication
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (txtName.Text != string.Empty)
            {
                cblDestinations.Items.Add(Server.HtmlEncode(txtName.Text));
                txtName.Text = null;
            }
        }

        protected void btnShip_Click(object sender, EventArgs e)
        {
            if (( rblShippingType.SelectedValue == string.Empty) || (cblDestinations.SelectedValue == string.Empty))
            {
                lblShippingConfirmation.Text = "You must select a shipping type and at least one destination.";
            }
            else
            {
                lblShippingConfirmation.Text = string.Format("Using {0} shipping to: <br />", rblShippingType.SelectedValue);

                foreach (ListItem item in cblDestinations.Items)
                {
                    if (item.Selected)
                    {
                        lblShippingConfirmation.Text += item.Value + "<br />";
                    }
                }
            }
        }
    }
}