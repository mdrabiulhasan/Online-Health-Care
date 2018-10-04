using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace OSHCCSApp.DAL
{
    public class DoctorLoignGateway : DBConnection
    {
        public bool DoctorLogin(string DoctorUserId, string Password)
        {
            try
            {
                connection.Open();
                var query = "SELECT COUNT(*) FROM tbl_doctorInfo WHERE docUserId=@DoctorUserId AND DocPassword=@Password";
                command.Connection = connection;                
                command.CommandType = CommandType.Text;
                command.CommandText = query;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@DoctorUserId", DoctorUserId);
                command.Parameters.AddWithValue("@Password", Password);
                var isAuthnticated = Convert.ToInt32(command.ExecuteScalar()) > 0;
                return isAuthnticated;
            }
            finally
            {
                connection.Close();
            }
        }



        internal bool DocLogin(string docEmail,string docPassword)
        {

            connection.Open();
            var sql = "Select Count(*) from doctorProcess1_tbl as p1 inner join doctorProcess2_tbl as p2 on p1.doctorEmail=p2.doctorEmail where p1.doctorEmail=@docEmail and p2.DocPassword=@docPassword";
            command.CommandType = CommandType.Text;
            command.CommandText = sql;
            command.Parameters.Clear();
            command.Parameters.AddWithValue("@docEmail", docEmail);
            command.Parameters.AddWithValue("@docPassword", docPassword);
            var isAuthenticated = Convert.ToInt32(command.ExecuteScalar()) > 0;
            connection.Close();
            return isAuthenticated;

            //connection.Open();
            //var sql = "Select Count(*) from doctorProcess1_tbl where doctorEmail=@docEmail";
            //command.CommandType = CommandType.Text;
            //command.CommandText = sql;
            //command.Parameters.Clear();
            //command.Parameters.AddWithValue("@docEmail", docEmail);
            //var isAuthenticated = Convert.ToInt32(command.ExecuteScalar()) > 0;
            //connection.Close();
            //return isAuthenticated;
        }
    }
}