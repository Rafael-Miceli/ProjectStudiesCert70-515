﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C7L1Exercise1WebApplication
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            AddressUserControl1.SaveButtonClick += new EventHandler(AddressUserControl1_SaveButtonClick);
        }

        void AddressUserControl1_SaveButtonClick(object sender, EventArgs e)
        {
            System.Diagnostics.Debug.WriteLine("Address: " +
                AddressUserControl1.Address +
                " City: " + AddressUserControl1.City +
                " State Province: " + AddressUserControl1.StateProvince +
                " Postal Code: " + AddressUserControl1.PostalCode);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
    }
}
