using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AndroidTrainng_EmpAPI.APIs
{
    public class MyJsonResult
    {
        public string status { get; set; }
        public string message { get; set; }
        public List<Employee> data { get; set; }
    }
}