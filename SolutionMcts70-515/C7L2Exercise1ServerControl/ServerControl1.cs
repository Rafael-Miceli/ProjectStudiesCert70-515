using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C7L2Exercise1ServerControl
{
    //[DefaultProperty("Text")]
    //[ToolboxData("<{0}:ServerControl1 runat=server></{0}:ServerControl1>")]
    [ToolboxData(@"<{0}:StateListControl ID=""StateListControl1"" runat=server></{0}:StateListControl>")]
    public class StateListControl : DropDownList //WebControl
    {
        public StateListControl()
        {
            this.Items.Add(new ListItem("Alagoas", "AL"));
            this.Items.Add(new ListItem("Amazonas", "AM"));
            this.Items.Add(new ListItem("Rio de Janeiro", "RJ"));
            this.Items.Add(new ListItem("São Paulo", "SP"));
            this.Items.Add(new ListItem("Espírito Santo", "ES"));
        }
     
        /*
        [Bindable(true)]
        [Category("Appearance")]
        [DefaultValue("")]
        [Localizable(true)]
        public string Text
        {
            get
            {
                String s = (String)ViewState["Text"];
                return ((s == null) ? "[" + this.ID + "]" : s);
            }

            set
            {
                ViewState["Text"] = value;
            }
        }

        protected override void RenderContents(HtmlTextWriter output)
        {
            output.Write(Text);
        }
        */ 


    }
}
