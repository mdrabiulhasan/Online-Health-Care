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
    public class CustomerPackageGateway : DBConnection
    {
        int rows = 0;
        internal DataTable GetAllPackageOrder()
        {

            try
            {
                connection.Open();
                var sql = "SELECT borrowarInfotbl.id, fullName,packageName,phoneNo,addresses,email,approvedYN FROM borrowarInfotbl INNER JOIN packagetbl on borrowarInfotbl.serviceCategory=packagetbl.id  Order By borrowarInfotbl.fullName ASC, borrowarInfotbl.id ASC";
                command.CommandType = CommandType.Text;
                command.CommandText = sql;
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                return dt;

            }
            finally
            {

                connection.Close();
            }



        }

        internal int Insert(Package packages)
        {
            connection.Open();
            command = new SqlCommand("sp_packagetbl", connection);
            command.Parameters.Add("@packageName", SqlDbType.NVarChar).Value = packages.PackageName;
            command.Parameters.Add("@packageDescription", SqlDbType.NVarChar).Value = packages.PackageDescription;
            command.Parameters.Add("@packagePrice", SqlDbType.NVarChar).Value = packages.PackagePrice;
            command.Parameters.Add("@photo", SqlDbType.NVarChar).Value = packages.Photo;
            command.CommandType = CommandType.StoredProcedure;
            rows = command.ExecuteNonQuery();
            connection.Close();

            return rows;

        }

        internal int GetCountTotal()
        {
            try
            {
                connection.Open();
                var sql = "Select count(*) packagetbl";
                command.Connection = connection;
                command.CommandText = sql;
                var count = (int)command.ExecuteScalar();
                return count;
            }
            finally
            {

                connection.Close();

            }
        }

        internal DataTable GetAllPackage()
        {
            connection.Open();
            var sql = "Select *From packagetbl";
            command.CommandType = CommandType.Text;
            command.CommandText = sql;
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            connection.Close();
            return dt;
        }


        internal DataTable SendEmail(Label sendMail)
        {
            try
            {
                connection.Open();
                var sql = "Update borrowarInfotbl set approvedYN='Y' where id='" + sendMail.Text + "'";
                command.Connection = connection;
                command.CommandType = CommandType.Text;
                command.CommandText = sql;
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable table = new DataTable();
                adapter.Fill(table);
                return table;
            }
            finally
            {

                connection.Close();
            }
        }

        internal DataTable GetNewOrders()
        {
            try
            {
                connection.Open();
                var query = "SELECT COUNT(id) as OrderId FROM borrowarInfotbl WHERE approvedYN='N'";
                command.CommandType = CommandType.Text;
                command.CommandText = query;
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                return dt;
            }
            finally
            {
                connection.Close();
            }
        }

        internal DataTable ViewDetails(Label details)
        {
            try
            {
                connection.Open();
                var sql = "SELECT borrowarInfotbl.id,fullName,approvedYN,addresses,phoneNo,email,packageName FROM borrowarInfotbl INNER JOIN packagetbl on borrowarInfotbl.serviceCategory=packagetbl.id WHERE borrowarInfotbl.id='" + details.Text + "'";
                command.Connection = connection;
                command.CommandType = CommandType.Text;
                command.CommandText = sql;
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable table = new DataTable();
                adapter.Fill(table);
                return table;
            }
            finally
            {

                connection.Close();
            }
        }

        internal int OrderConfirm(string cuId)
        {
            try
            {
               connection.Open();
               var sql = "Update borrowarInfotbl set approvedYN='Y' where id='" + cuId + "'";
                command.Connection = connection;
                command.CommandType = CommandType.Text;
                command.CommandText = sql;
                command.Parameters.AddWithValue("cuId", cuId);
                rows = command.ExecuteNonQuery();
                return rows;
            }
            finally
            {

                connection.Close();
            }
        }

        internal DataTable PrintOrder(string cuId)
        {
            try
            {
                connection.Open();
                var sql = "SELECT id,fullName,phoneNo,email,clientPhoto FROM borrowarInfotbl WHERE id='" + cuId + "'";
                command.Connection = connection;
                command.CommandType = CommandType.Text;
                command.CommandText = sql;
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable table = new DataTable();
                adapter.Fill(table);
                return table;
            }
            finally
            {

                connection.Close();
            }
            
        }

        internal int OrderPending(string cuId)
        {
            try
            {
                connection.Open();
                var sql = "Update borrowarInfotbl set approvedYN='P' where id='" + cuId + "'";
                command.Connection = connection;
                command.CommandType = CommandType.Text;
                command.CommandText = sql;
                //command.Parameters.AddWithValue("cuId", cuId);
                rows = command.ExecuteNonQuery();
                return rows;
            }
            finally
            {

                connection.Close();
            }
        }

        internal DataTable GetALLClientOrder()
        {
            try
            {
                connection.Open();
                var sql = "SELECT id,fullName,addresses,phoneNo,email,approvedYN FROM borrowarInfotbl";
                command.Connection = connection;
                command.CommandType = CommandType.Text;
                command.CommandText = sql;
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable table = new DataTable();
                adapter.Fill(table);
                return table;
            }
            finally
            {

                connection.Close();
            }
            
        }

        internal DataTable GetNewDoctors()
        {
            try
            {
                connection.Open();
                var query = "SELECT COUNT(doctorEmail) as totalNewDoctor FROM doctorProcess2_tbl WHERE approverYN='Pending'";
                command.CommandType = CommandType.Text;
                command.CommandText = query;
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                return dt;
            }
            finally
            {
                connection.Close();
            }

        }

        internal DataTable GetApprovedDoctors()
        {
            try
            {
                connection.Open();
                var query = "SELECT COUNT(doctorEmail) as totalApprovedDoctor FROM doctorProcess2_tbl WHERE approverYN='Active'";
                command.CommandType = CommandType.Text;
                command.CommandText = query;
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                return dt;
            }
            finally
            {
                connection.Close();
            }
        }
    }
}