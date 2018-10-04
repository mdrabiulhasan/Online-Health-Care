using System.Data;
using System.Data.SqlClient;
using System.Web.Caching;
using AjaxControlToolkit;
using OSHCCSApp.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OSHCCSApp.DAL
{
    public class UserGateway : DBConnection
    {
        int rows = 0;
        internal int Insert(Users paients)
        {
            try
            {
                connection.Open();
                command = new SqlCommand("wsp_tbl_userInfo", connection);
                command.Parameters.Add("@patientUserId", SqlDbType.NVarChar).Value = paients.PatientUserId;
                command.Parameters.Add("@fullName", SqlDbType.NVarChar).Value = paients.FullName;
                command.Parameters.Add("@birthday", SqlDbType.NVarChar).Value = paients.Birthday;
                command.Parameters.Add("@country", SqlDbType.NVarChar).Value = paients.Country;
                command.Parameters.Add("@UserPassword", SqlDbType.NVarChar).Value = paients.Password;
                command.Parameters.Add("@email ", SqlDbType.NVarChar).Value = paients.Email;
                command.Parameters.Add("@phoneNo", SqlDbType.NVarChar).Value = paients.PhoneNo;
                command.CommandType = CommandType.StoredProcedure;
                rows = command.ExecuteNonQuery();
            }
            finally
            {

                connection.Close();
            }
            return rows;
        }

        public bool IsUserExist(string paitenUserId)
        {
            try
            {
                connection.Open();
                var sql = "Select count(*) from tbl_userInfo  where paitenUserId=@patientUserId";
                command.CommandText = sql;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@patientUserId", paitenUserId);
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
                var sql = "SELECT count(*) From tbl_userInfo";
                command.CommandText = sql;
                command.Connection = connection;
                var count = (int)command.ExecuteScalar();
                return count;


            }
            finally
            {

                connection.Close();
            }
        }

        //public DataTable GetAllUser()
        //{
        //    try
        //    {
        //        connection.Open();
        //        var Sql = "Select paitenUserId,UserPassword from tbl_userInfo where(uId=@paitenUserId && uPassword=@UserPassword)";
        //        command.Connection = connection;
        //        command.CommandText = Sql;
        //        SqlDataAdapter adapter=new SqlDataAdapter(command);
        //        DataTable tbl=new DataTable();
        //        adapter.Fill(tbl);
               
           
        //       return tbl;
        //    }
        //    finally 
        //    {

        //        connection.Close();
        //    }
        //}

        //public DataTable GetAppoinmentShedule()
        //{
        //    try
        //    {
        //        connection.Open();
        //        var sql = "Select *from tbl_doctorInfo where docUserId='" + docUserId + "' and DocPassword='" + docPassword + "'";
        //        command.Connection = connection;
        //        command.CommandType = CommandType.Text;
        //        command.CommandText = sql;
        //        SqlDataAdapter adapter = new SqlDataAdapter(command);
        //        DataTable table = new DataTable();
        //        adapter.Fill(table);
        //        return table;
        //    }
        //    finally
        //    {

        //        connection.Close();
        //    }
        //}

        public DataTable GetAllUser()
        {
            try
            {
                connection.Open();
                var query = "Select * From tbl_userInfo";
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

        public bool UserLogin(string uId, string uPassword)
        {
            try
            {
                connection.Open();
                var query = "SELECT COUNT(*) FROM tbl_userInfo WHERE paitenUserId=@uId AND UserPassword=@uPassword";
                command.Connection = connection;
                command.CommandType = CommandType.Text;
                command.CommandText = query;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@uId", uId);
                command.Parameters.AddWithValue("@uPassword", uPassword);
                var isAuthnticated = Convert.ToInt32(command.ExecuteScalar()) > 0;
                return isAuthnticated;
            }
            finally
            {
                connection.Close();
            }
        }

        public DataTable GetUserInfo(string uId)
        {
            try
            {
                connection.Open();
                var query = "Select * From tbl_userInfo where paitenUserId='" + uId + "'";
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

        public int Insert(Appointments ap)
        {
            try
            {
                connection.Open();
                command = new SqlCommand("wsp_appoinment", connection);
                command.Parameters.Add("@DocUserId", SqlDbType.NVarChar).Value = ap.DocUserId;
                command.Parameters.Add("@PaitenUserId", SqlDbType.NVarChar).Value = ap.PaitenUserId;
                command.Parameters.Add("@AppointmentDate", SqlDbType.NVarChar).Value = ap.AppointmentDate;
                command.Parameters.Add("@DoctorName", SqlDbType.NVarChar).Value = ap.DoctorName;
                command.Parameters.Add("@PatientName", SqlDbType.NVarChar).Value = ap.PatientName;
                command.Parameters.Add("@Place", SqlDbType.NVarChar).Value = ap.Place;
                command.Parameters.Add("@Hospital", SqlDbType.NVarChar).Value = ap.Hospital;
                command.Parameters.Add("@Duration", SqlDbType.NVarChar).Value = ap.Duration;
                command.Parameters.Add("@CurrentDate", SqlDbType.NVarChar).Value = ap.CurrentDate;
                command.Parameters.Add("@PatientPhoneNo", SqlDbType.NVarChar).Value = ap.PatientPhoneNo;
                command.CommandType = CommandType.StoredProcedure;
                rows = command.ExecuteNonQuery();
            }
            finally
            {
                connection.Close();
            }
            return rows;
        }
    }
}