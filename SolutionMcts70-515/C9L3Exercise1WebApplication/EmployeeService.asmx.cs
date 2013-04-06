using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace C9L3Exercise1WebApplication
{
    /// <summary>
    /// Summary description for EmployeeService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class EmployeeService : System.Web.Services.WebService
    {

        [WebMethod]
        public Employee GetEmployeeById(string employeeId)
        {
            //Simulate an employee name lookup
            return new Employee(employeeId);
        }
    }

    [Serializable]
    public class Employee
    {
        public string FullName { get; set; }
        public string ID { get; set; }
        public string Title { get; set; }
        public string Department { get; set; }

        public Employee(string empId)
        {
            //simulate looking up an employee

            this.ID = empId;
            this.FullName = "Rafael Developer";
            this.Title = "ASP.NET Sr. Developer";
            this.Department = "Application Development";
        }

        public Employee()
        {

        }
    }
}
