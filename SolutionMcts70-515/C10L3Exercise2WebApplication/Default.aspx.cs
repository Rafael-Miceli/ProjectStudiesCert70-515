using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C10L3Exercise2WebApplication
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonGet_Click(object sender, EventArgs e)
        {
            //todo: add validation & error handling
            int shipperId = int.Parse(TextBoxShipperCode.Text);

            NwServices.ShipperServiceClient nwShipper = new NwServices.ShipperServiceClient();

            NwServices.Shipper shipper = new NwServices.Shipper();
            shipper = nwShipper.GetShipper(shipperId);

            TextBoxShipperId.Text = shipper.ShipperId.ToString();
            TextBoxCompany.Text = shipper.CompanyName;
            TextBoxPhone.Text = shipper.Phone;
        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            //todo: add validation & error handling
            NwServices.Shipper shipper = new NwServices.Shipper();

            shipper.ShipperId = int.Parse(TextBoxShipperId.Text);
            shipper.CompanyName = TextBoxCompany.Text;
            shipper.Phone = TextBoxPhone.Text;

            NwServices.ShipperServiceClient nwShipper = new NwServices.ShipperServiceClient();
            nwShipper.SaveShipper(shipper);
        }
    }
}
