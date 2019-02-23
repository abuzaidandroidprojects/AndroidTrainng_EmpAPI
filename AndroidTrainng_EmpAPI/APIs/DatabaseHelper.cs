using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace AndroidTrainng_EmpAPI.APIs
{
    public class DatabaseHelper
    {
        private string connestionString= ConfigurationManager.ConnectionStrings["AndroidTraining_EmpConnectionString"].ConnectionString;

        public DatabaseHelper()
        {
        }

        public DataTable GetTempSchoolData()
        {
            DataTable dtSchool = new DataTable();
            try
            {
                string sqlSchools = string.Format(@"SELECT * FROM Employees");
                dtSchool = GetData(sqlSchools);
            }
            catch { throw; }
            return dtSchool;
        }
        public DataTable GetData(string sqlQuery)
        {
            DataTable dtGetData = new DataTable();
            SqlConnection oraConnection = new SqlConnection(connestionString);
            try
            {
                oraConnection.Open();
                SqlCommand sqlCommand = new SqlCommand();
                sqlCommand.Connection = oraConnection;
                sqlCommand.CommandText = sqlQuery;
                sqlCommand.CommandType = CommandType.Text;
                SqlDataReader drReader = sqlCommand.ExecuteReader();
                dtGetData.Load(drReader);
            }
            catch
            {
                throw;
            }
            finally
            {
                oraConnection.Close();
                oraConnection.Dispose();
            }

            return dtGetData;
        }
    }
}