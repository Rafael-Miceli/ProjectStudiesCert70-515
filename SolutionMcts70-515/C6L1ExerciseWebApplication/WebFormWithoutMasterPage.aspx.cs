using System;
using System.Globalization;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C6L1ExerciseWebApplication
{
    public partial class WebFormWithoutMasterPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            foreach (CultureInfo item in CultureInfo.GetCultures(CultureTypes.NeutralCultures))
            {
                ddlListLang.Items.Add(new ListItem(item.NativeName, item.Name));
            }
        }

        protected override void InitializeCulture()
        {
            if (Request.Form["ddlListLang"] != null)
            {
                UICulture = Request.Form["ddlListLang"];
            }
            base.InitializeCulture();
        }
    }
}