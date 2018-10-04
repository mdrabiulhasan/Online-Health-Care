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
    public class ServiceGateway : DBConnection
    {
        int rows = 0;
        internal int Insert(Service serviceCategory)
        {
            try
            {
                connection.Open();
                command = new SqlCommand("wsp_service", connection);
                command.Parameters.Add("@category", SqlDbType.NVarChar).Value = serviceCategory.Category;
                command.Parameters.Add("@hospital", SqlDbType.NVarChar).Value = serviceCategory.HospitalName;
                command.CommandType = CommandType.StoredProcedure;
                rows = command.ExecuteNonQuery();

            }
            finally
            {

                connection.Close();
            }
            return rows;
        }

        internal int InsertServiceOrg(Service serviceOrg)
        {
            try
            {
                connection.Open();
                command = new SqlCommand("wsp_addOrganization", connection);
                command.Parameters.Add("@AboutOrganization", SqlDbType.NVarChar).Value = serviceOrg.AboutOrganization;
                command.Parameters.Add("@OrgPhoto", SqlDbType.NVarChar).Value = serviceOrg.OrgPhoto;
                command.CommandType = CommandType.StoredProcedure;
                rows = command.ExecuteNonQuery();

            }
            finally
            {

                connection.Close();
            }
            return rows;
        }
        public int GetCountOrgTotal()
        {
            try
            {
                connection.Open();
                var query = "SELECT COUNT(*) tbl_addOrganization";
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

        public DataTable GetChairmanInfo()
        {
            try
            {
                connection.Open();
                var query = "Select * From tbl_aboutChairman";
                command.CommandText = query;
                command.CommandType = CommandType.Text;
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

        public DataTable GetDirectorInfo()
        {
            try
            {
                connection.Open();
                var query = "Select * From tbl_aboutDirector";
                command.CommandText = query;
                command.CommandType = CommandType.Text;
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

        public DataTable GetAllCategory()
        {
            try
            {
                connection.Open();
                var query = "Select * From tbl_service";
                command.CommandText = query;
                command.CommandType = CommandType.Text;
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

        internal int InsertChairman(aboutChairman chairmen)
        {
            try
            {
                connection.Open();
                command = new SqlCommand("wsp_aboutChairman", connection);
                command.Parameters.Add("@ChairmanName", SqlDbType.NVarChar).Value = chairmen.ChairmanName;
                command.Parameters.Add("@ChairmanDesignation", SqlDbType.NVarChar).Value = chairmen.ChairmanDesignation;
                command.Parameters.Add("@ChairmanEmail", SqlDbType.NVarChar).Value = chairmen.ChairmanEmail;
                command.Parameters.Add("@ChairmanPhoto", SqlDbType.NVarChar).Value = chairmen.ChairmanPhoto;
                command.CommandType = CommandType.StoredProcedure;
                rows = command.ExecuteNonQuery();

            }
            finally
            {

                connection.Close();
            }
            return rows;
        }

        public int GetCountTotal()
        {
            try
            {
                connection.Open();
                var query = "SELECT COUNT(*) tbl_aboutChairman";
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

        public int GetDirectorCountTotal()
        {
            try
            {
                connection.Open();
                var query = "SELECT COUNT(*) tbl_aboutDirector";
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

        internal int InsertDirector(AboutDirector director)
        {
            try
            {
                connection.Open();
                command = new SqlCommand("wsp_aboutDirector", connection);
                command.Parameters.Add("@DirectorName", SqlDbType.NVarChar).Value = director.DirectorName;
                command.Parameters.Add("@DirectorDesignation", SqlDbType.NVarChar).Value = director.DirectorDesignation;
                command.Parameters.Add("@DirectorEmail", SqlDbType.NVarChar).Value = director.DirectorEmail;
                command.Parameters.Add("@DirectorPhoto", SqlDbType.NVarChar).Value = director.DirectorPhoto;
                command.CommandType = CommandType.StoredProcedure;
                rows = command.ExecuteNonQuery();

            }
            finally
            {

                connection.Close();
            }
            return rows;
        }

        public DataTable DeleteChairmanInfo(Label lbleDelete)
        {
            connection.Open();
            var sql = "Delete from tbl_aboutChairman where chairmanName='" + lbleDelete.Text + "' ";
            command.Connection = connection;
            command.CommandType = CommandType.Text;
            command.CommandText = sql;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            connection.Close();
            return dt;

        }

        public DataTable DeleteDirector(Label lbleDelete)
        {
            connection.Open();
            var sql = "Delete from tbl_aboutDirector where directorName='" + lbleDelete.Text + "' ";
            command.Connection = connection;
            command.CommandType = CommandType.Text;
            command.CommandText = sql;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            connection.Close();
            return dt;

        }

        internal DataTable GetServiceCategory()
        {
            try
            {
                connection.Open();
                var sql = "Select id,packageName from packagetbl";
                command.Connection = connection;
                command.CommandType = CommandType.Text;
                command.CommandText = sql;
                SqlDataAdapter da = new SqlDataAdapter(command);
                DataTable tbl = new DataTable();
                da.Fill(tbl);
                return tbl;
            }
            finally
            {

                connection.Close();
            }
        }

        internal int Insert(customer customers)
        {
            try
            { 
                connection.Open();
                command = new SqlCommand("sp_borrowarInfotbl", connection);
                command.Parameters.Add("@fullname", SqlDbType.NVarChar).Value = customers.Fullname;
                command.Parameters.Add("@phoneNo", SqlDbType.NVarChar).Value = customers.PhoneNo;
                command.Parameters.Add("@serviceCategory", SqlDbType.NVarChar).Value = customers.ServiceCategory;
                command.Parameters.Add("@divission", SqlDbType.NVarChar).Value = customers.Divission;
                command.Parameters.Add("@distric", SqlDbType.NVarChar).Value = customers.Distric;
                command.Parameters.Add("@thana", SqlDbType.NVarChar).Value = customers.Thana;
                command.Parameters.Add("@addresses", SqlDbType.NVarChar).Value = customers.Addresses;
                command.Parameters.Add("@email", SqlDbType.NVarChar).Value = customers.Email;
                command.Parameters.Add("@clientPhoto", SqlDbType.Image).Value =customers.ClientPhoto;
                command.CommandType = CommandType.StoredProcedure;
                rows = command.ExecuteNonQuery();
            }
            finally
            {
                connection.Close();
            }
            return rows;
        }
        internal DataTable GetImageReport()
        {
            try
            {
                connection.Open();
                var sql = "Select photo from image_tbl";
                command.Connection = connection;
                command.CommandType = CommandType.Text;
                command.CommandText = sql;
                SqlDataAdapter da = new SqlDataAdapter(command);
                DataTable tbl = new DataTable();
                da.Fill(tbl);
                return tbl;
            }
            finally
            {

                connection.Close();
            }
        }

        internal DataTable GetImage()
        {
            try
            {
                connection.Open();
                var sql = "Select photo from image_tbl";
                command.Connection = connection;
                command.CommandType = CommandType.Text;
                command.CommandText = sql;
                SqlDataAdapter da = new SqlDataAdapter(command);
                DataTable tbl = new DataTable();
                da.Fill(tbl);
                return tbl;
            }
            finally
            {

                connection.Close();
            }
        }

        //internal int CountImg()
        //{
        //    connection.Open();
        //    var query = "Select count(*) from image_tbl";
        //    command.CommandText = query;
        //    var count = (int)command.ExecuteScalar();
        //    connection.Close();
        //    return count;
        //}

    }
}