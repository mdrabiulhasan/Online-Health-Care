using OSHCCSApp.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace OSHCCSApp.DAL
{
    public class AdminGateway : DBConnection
    {
        
        internal int Insert(Admin aAdmin)
        {
            int rows = 0;          
            try
            { 
                connection.Open();
                command = new SqlCommand("wsp_admin", connection);
                command.Parameters.Add("@UserId", SqlDbType.NVarChar).Value = aAdmin.UserId;
                command.Parameters.Add("@FullName", SqlDbType.NVarChar).Value = aAdmin.FullName;
                command.Parameters.Add("@AdPassword", SqlDbType.NVarChar).Value = aAdmin.AdPassword;
                command.Parameters.Add("@Email", SqlDbType.NVarChar).Value = aAdmin.Email;
                command.Parameters.Add("@Phone", SqlDbType.NVarChar).Value = aAdmin.Phone;
                command.Parameters.Add("@Photo", SqlDbType.NVarChar).Value = aAdmin.Photo;
                command.CommandType = CommandType.StoredProcedure;
                rows = command.ExecuteNonQuery();


            } 
            finally
            {
                connection.Close();
            }
            return rows;
           // return msg;
        }

        public bool IsUserIdAvailable(string userId)
        {
            try
            {
                connection.Open();
                var query = "SELECT COUNT(*) FROM tbl_Admin WHERE userId=@userId";
                command.CommandText = query;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@userId", userId);
                return (int)command.ExecuteScalar() <= 0;

            }
            finally
            {
                connection.Close();
            }
        }

        public int GetCountTotal()
        {
            try
            {
                connection.Open();
                var query = "SELECT COUNT(*) tbl_Admin";
                command.Connection = connection;
                command.CommandText = query;
                var count = (int)command.ExecuteScalar();
                return count;
            }
            finally
            {
                connection.Close();
            }
        }


        public DataTable GetAllAdminInfo()
        {
            try
            {
                connection.Open();
                var query = "Select * From tbl_Admin";
                command.CommandText = query;
                SqlDataAdapter da = new SqlDataAdapter(command);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;


            }
            finally
            {

                connection.Close();
            }
        }

        public DataTable DeleteAdmin(Label lblDelete)
        {
            connection.Open();
            var query = "Delete From Tbl_Admin where userId='"+lblDelete.Text+"'";
            command.CommandText = query;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            connection.Close();
            return dt;
            
        }

        public bool AdminLogin(string userName, string password)
        {
            try
            {
                connection.Open();
                var query = "SELECT * FROM tbl_Admin WHERE userId=@userName AND Adpassword=@password";
                command.Connection = connection;
                command.CommandType = CommandType.Text;
                command.CommandText = query;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@userName", userName);
                command.Parameters.AddWithValue("@password", password);
                var isAuthnticated = Convert.ToInt32(command.ExecuteScalar()) > 0;
                return isAuthnticated;
            }

            finally
            {
                connection.Close();
            }
        }

        public DataTable GetAdmin(string userId)
        {
            try
            {
                connection.Open();
                var query = "Select * From tbl_Admin where userId='" + userId + "'";
                command.CommandText = query;
                SqlDataAdapter da = new SqlDataAdapter(command);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;


            }
            finally
            {

                connection.Close();
            }
        }

        public DataTable GetAdminInfoById(string UserId)
        {
            try
            {
                connection.Open();
                var query = "Select * From tbl_Admin where userId='" + UserId + "'";
                command.CommandText = query;
                SqlDataAdapter da = new SqlDataAdapter(command);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
            finally
            {

                connection.Close();
            }
        }
    }
}