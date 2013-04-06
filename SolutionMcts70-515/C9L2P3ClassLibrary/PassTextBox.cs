using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI.WebControls;
using System.Web.UI;
using System.Web;

namespace C9L2P3AjaxEnabled
{
    public class PassTextBox: TextBox, IScriptControl
    {
        private ScriptManager sMgr;

        public string WaekCssClass;
        public string MediumCssClass;
        public string StrongCssClass;

        public IEnumerable<ScriptDescriptor> GetScriptDescriptors()
        {
            ScriptControlDescriptor descriptor = new ScriptControlDescriptor("C9L2P3AjaxEnabled.PassTextBox", this.ClientID);

            descriptor.AddProperty("weakCssClass", this.WaekCssClass);
            descriptor.AddProperty("mediumCssClass", this.MediumCssClass);
            descriptor.AddProperty("strongCssClass", this.StrongCssClass);

            return new ScriptDescriptor[] { descriptor };
        }

        public IEnumerable<ScriptReference> GetScriptReferences()
        {
            ScriptReference reference = new ScriptReference();

            reference.Assembly = "C9L2P3AjaxEnabled";
            reference.Name = "C9L2P3ClassLibrary.PassTextBox.js";

            return new ScriptReference[] { reference };
        }

        protected override void OnPreRender(EventArgs e)
        {
            if (!this.DesignMode)
            {
                //test for the existence of a ScriptManager

                sMgr = ScriptManager.GetCurrent(Page);

                if (sMgr == null)
                {
                    throw new HttpException("A ScriptManager control must exist on the page");
                }

                sMgr.RegisterScriptControl(this);
            }

            base.OnPreRender(e);
        }

        protected override void Render(HtmlTextWriter writer)
        {
            if (!this.DesignMode)
            {
                sMgr.RegisterScriptDescriptors(this);
            }

            base.Render(writer);
        }

        IEnumerable<ScriptReference> IScriptControl.GetScriptReferences()
        {
            return GetScriptReferences();
        }

        IEnumerable<ScriptDescriptor> IScriptControl.GetScriptDescriptors()
        {
            return GetScriptDescriptors();
        }
    }
}
