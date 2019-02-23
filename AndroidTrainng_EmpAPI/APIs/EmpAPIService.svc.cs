using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.ServiceModel.Web;
using System.Text;

namespace AndroidTrainng_EmpAPI.APIs
{
    [ServiceContract(Namespace = "")]
    [AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
    public class EmpAPIService
    {
        // To use HTTP GET, add [WebGet] attribute. (Default ResponseFormat is WebMessageFormat.Json)
        // To create an operation that returns XML,
        //     add [WebGet(ResponseFormat=WebMessageFormat.Xml)],
        //     and include the following line in the operation body:
        //         WebOperationContext.Current.OutgoingResponse.ContentType = "text/xml";
        [OperationContract]
        [WebGet(ResponseFormat = WebMessageFormat.Json)]
        public MyJsonResult getEmployees()
        {
            var result = new MyJsonResult();           
            try
            {
                Employee employee=null;
                List<Employee> employees =new List<Employee>();
                
                DatabaseHelper databaseHelper = new DatabaseHelper();
                DataTable dataTable = databaseHelper.GetTempSchoolData();
                if (dataTable != null && dataTable.Rows.Count > 0)
                    foreach (var  dr in dataTable.Rows)
                {
                        employee = new Employee();
                        employee.ID = Int32.Parse(dataTable.Rows[0]["ID"].ToString());
                        employee.name = dataTable.Rows[0]["name"].ToString();
                        employee.email = dataTable.Rows[0]["email"].ToString();
                        employee.phone = dataTable.Rows[0]["phone"].ToString();
                        employee.address = dataTable.Rows[0]["address"].ToString();
                        employee.dept = dataTable.Rows[0]["dept"].ToString();
                        employee.picResPath = dataTable.Rows[0]["picResPath"].ToString();
                        employee.picResID = Int32.Parse(dataTable.Rows[0]["picResID"].ToString());
                        employee.hireDate = DateTime.Parse(dataTable.Rows[0]["hireDate"].ToString());
                        employees.Add(employee);

                    }
               
                result.status = "Success";
                result.data = employees;
            }
            catch (Exception ex)
            {
                result.status = "Fail";
                result.message = ex.Message;
            }
            return result;
        }
    }
}
