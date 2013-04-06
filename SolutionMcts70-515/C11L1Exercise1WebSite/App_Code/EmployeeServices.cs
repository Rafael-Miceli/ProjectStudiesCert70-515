using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Linq;

/// <summary>
/// Summary description for EmployeeServices
/// </summary>
public class EmployeeServices
{
	public EmployeeServices()
	{
		
	}

    XElement _empXml = XElement.Load(@"|DataDirectory|\employees.xml");

    public List<string> GetDepartments()
    {
        //query the XML and group by department select only the depatments in the group

        var deptQuery = from emp in _empXml.Descendants("Employee")
                        group emp by emp.Element("Department").Value
                            into emGroup
                            select emGroup.First().Element("Department").Value;

        return deptQuery.ToList();
    }

    public List<Employee> GetEMployeeByDept(string department)
    {
        //query the XML list by department and return a list of Employee objects

        IEnumerable<Employee> empQuery = from emp in _empXml.Descendants("Employee")
                                         where emp.Element("Department").Value == department
                                         select new Employee
                                         {
                                             Id = emp.Element("ID").Value,
                                             Department = emp.Element("Department").Value,
                                             FirstName = emp.Element("FirstName").Value,
                                             LastName = emp.Element("LastName").Value,
                                             Location = emp.Element("Location").Value
                                         };

        return empQuery.ToList();
    }
}