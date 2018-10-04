using OSHCCSApp.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace OSHCCSApp.DAL
{
    public class LabTestInfoGateway:DBConnection
    {
        int row = 0;
        internal DataTable GetLabTestInfo()
        {
            try
            {
                connection.Open();
                var sql = "Select lab_name,test_name, address_or_location, left(about,100) as about from lab_Test_tbl";
                command.CommandText = sql;
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

        internal int Insert(LabTests tTests)
        {
            connection.Open();
            command = new SqlCommand("sp_labTest", connection);
            command.Parameters.Clear();
            command.Parameters.Add("@lab_name", SqlDbType.NVarChar).Value = tTests.Lab_name;
            command.Parameters.Add("@test_name", SqlDbType.NVarChar).Value = tTests.Test_name;
            command.Parameters.Add("@district_or_city", SqlDbType.NVarChar).Value = tTests.District_or_city;
            command.Parameters.Add("@address_or_location", SqlDbType.NVarChar).Value = tTests.Address_or_location;
            command.Parameters.Add("@about", SqlDbType.NVarChar).Value = tTests.About;
            command.CommandType = CommandType.StoredProcedure;
            row = command.ExecuteNonQuery();
            connection.Close();
            return row;
        }

        internal DataTable GetLab()
        {
            try
            {
                connection.Open();
                var sql = "Select *from lab_Test_tbl";
                command.CommandText = sql;
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

        internal DataTable GetLabTest(string lName)
        {
            try
            {
                connection.Open();
                var sql = "Select test_name,id from lab_Test_tbl where lab_name='" + lName + "'";
                command.CommandText = sql;
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

        internal int Save(SubTests sTests)
        {
            connection.Open();
            command = new SqlCommand("sp_subLabTest", connection);
            command.Parameters.Clear();
            command.Parameters.Add("@test_id", SqlDbType.Int).Value = sTests.test_id;
            command.Parameters.Add("@sub_test_name", SqlDbType.NVarChar).Value = sTests.Sub_test_name;
            command.Parameters.Add("@test_price", SqlDbType.Int).Value = sTests.test_price;
            command.CommandType = CommandType.StoredProcedure;
            row = command.ExecuteNonQuery();
            connection.Close();
            return row;
        }

        internal DataTable GetLabDetails(string lname)
        {
            try
            {
                connection.Open();
                var sql = "select lt.lab_name,lt.test_name,lt.address_or_location,lt.about,slt.sub_test_name,slt.test_price from lab_Test_tbl as lt inner join lab_sub_test_tbl as slt on lt.id=slt.test_id where lab_name='" + lname + "'";
                command.CommandText = sql;
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

        internal DataTable GetAllTests()
        {
            try
            {
                connection.Open();
                var sql = "Select test_name,id from lab_Test_tbl";
                command.CommandText = sql;
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



        internal DataTable GetAllByDistrict(string searchDistrict)
        {
            try
            {
                connection.Open();
                var sql = "Select lab_name,test_name, address_or_location, left(about,100) as about from lab_Test_tbl where district_or_city='" + searchDistrict + "'";
                command.CommandText = sql;
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