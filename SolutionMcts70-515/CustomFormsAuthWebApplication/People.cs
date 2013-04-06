using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CustomFormsAuthWebApplication
{
    public class People
    {
        public string Name { get; set; }
        public string Password { get; set; }
        public string Role { get; set; }

        public People GetUser(string name, string password, List<People> peoples)
        {
            return peoples.First(o => o.Name == name && o.Password == password);
        }
    }
}