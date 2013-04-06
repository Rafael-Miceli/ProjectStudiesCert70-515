using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C4L2Exercise1WebApplication
{
    public partial class Default:System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Wizard1.ActiveStepIndex = 0;
                ImgMapOffice.HotSpotMode = HotSpotMode.PostBack;
                ImgMapOffice.HotSpots.Add(GetHotSpot("Cubicle A", 0, 0, 123, 105));
                ImgMapOffice.HotSpots.Add(GetHotSpot("Cubicle B", 124, 0, 262, 105));
                ImgMapOffice.HotSpots.Add(GetHotSpot("Cubicle C", 263, 0, 382, 105));
                ImgMapOffice.HotSpots.Add(GetHotSpot("Cubicle D", 258, 164, 382, 286));
                ImgMapOffice.HotSpots.Add(GetHotSpot("Cubicle E", 135, 164, 257, 286));
                ImgMapOffice.HotSpots.Add(GetHotSpot("Cubicle F", 0, 164, 134, 286));
            }
        }

        private RectangleHotSpot GetHotSpot(string name, int left, int top, int right, int bottom)
        {
            RectangleHotSpot rhs = new RectangleHotSpot()
            {
                PostBackValue = name,
                Left = left,
                Top = top,
                Right = right,
                Bottom = bottom
            };

            return rhs;
        }

        protected void ImgMapOffice_Click(object sender, ImageMapEventArgs e)
        {
            lblOfficeSelected.Text = e.PostBackValue;
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            Wizard1.Visible = false;
            Response.Write("Thank you! Your request is being processed.");
        }

        protected void Wizard1_ActiveStepChanged(object sender, EventArgs e)
        {
            if (Wizard1.ActiveStep.Title == "Summary")
            {
                lblSummary.Text = string.Format("Summary info:<br />Room: {0}<br />Delivery Date: {1}", lblOfficeSelected.Text, calServiceDate.SelectedDate.ToShortDateString());
            }
        }
    }
}