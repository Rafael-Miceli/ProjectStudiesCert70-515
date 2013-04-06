using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using C11L1Exercise1WebApplication.Code;

namespace C11L1Exercise1WebApplication
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            EmployeeServices empSrv = new EmployeeServices();
            GridViewEmployees.DataSource =
            empSrv.GetEMployeeByDept(DropDownListDepts.SelectedItem.Text);
            GridViewEmployees.DataBind();
        }
    }
}
