using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AndroidTrainng_EmpAPI.APIs
{
    public class Employee
    {
        public string name { set; get; }
        public string email { set; get; }
        public string phone { set; get; }
        public string address { set; get; }
        public string dept { set; get; }
        public string picResPath { set; get; }
        public int picResID { set; get; }
        public int ID;
        public DateTime hireDate { set; get; }

        public Employee()
        {
        }

        public Employee(int iD, string name, string email, string phone, string address, string dept, string picResPath, DateTime hireDate)
        {
            this.name = name;
            this.email = email;
            this.phone = phone;
            this.address = address;
            this.dept = dept;
            this.picResPath = picResPath;
            ID = iD;
            this.hireDate = hireDate;
        }
    }
}