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
    public class DoctorGateway : DBConnection
    {
        internal int Insert(Doctors dDoctors)
        {
            int rows = 0;
            try
            {
                connection.Open();
                command = new SqlCommand("tbl_doctoprInfo", connection);
                command.Parameters.Add("@doctorUserId", SqlDbType.NVarChar).Value = dDoctors.DoctorUserId;
                command.Parameters.Add("@fullName", SqlDbType.NVarChar).Value = dDoctors.Fullname;
                command.Parameters.Add("@biorthDay", SqlDbType.NVarChar).Value = dDoctors.DateOFBirth;
                command.Parameters.Add("@nId", SqlDbType.NVarChar).Value = dDoctors.NId;
                command.Parameters.Add("@category", SqlDbType.NVarChar).Value = dDoctors.Category;
                command.Parameters.Add("@designation", SqlDbType.NVarChar).Value = dDoctors.Designation;
                command.Parameters.Add("@about", SqlDbType.NVarChar).Value = dDoctors.About;
                command.Parameters.Add("@hospital", SqlDbType.NVarChar).Value = dDoctors.Hospital;
                command.Parameters.Add("@chember", SqlDbType.NVarChar).Value = dDoctors.Chember;
                command.Parameters.Add("@country", SqlDbType.NVarChar).Value = dDoctors.Country;
                command.Parameters.Add("@district", SqlDbType.NVarChar).Value = dDoctors.District;
                command.Parameters.Add("@cityOrVillage", SqlDbType.NVarChar).Value = dDoctors.CityOrVillage;
                command.Parameters.Add("@DocPassword", SqlDbType.NVarChar).Value = dDoctors.Password;
                command.Parameters.Add("@email", SqlDbType.NVarChar).Value = dDoctors.Email;
                command.Parameters.Add("@phoneNo", SqlDbType.NVarChar).Value = dDoctors.PhoneNo;
                command.Parameters.Add("@photo", SqlDbType.NVarChar).Value = dDoctors.Photo;
                command.CommandType = CommandType.StoredProcedure;
                rows = command.ExecuteNonQuery();

            }
            finally
            {
                connection.Close();
            }
            return rows;
        }
        public bool IsDoctorExist(string docUserId)
        {
            try
            {
                connection.Open();
                var sql = "Select count(*) from tbl_doctorInfo where docUserId=@docUserId";
                command.CommandText = sql;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@docUserId", docUserId);
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
                var sql = "Select count(*) tbl_doctorInfo";
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
        public DataTable GetDoctorInfo()
        {
            try
            {
                connection.Open();
                //var sql = "Select *from tbl_doctorInfo order By fullName ASC";
                var sql = "Select p1.doctorFullName,p1.doctorEmail,p1.doctorPhone, p2.category,p2.photo,p2.designation,p2.country,p2.district,p2.cityOrVillage,p2.approverYN from doctorProcess1_tbl as p1 inner join doctorProcess2_tbl as p2 on p1.doctorEmail=p2.doctorEmail";
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
        //Load District DropDownList
        public DataTable GetDistrict()
        {
            try
            {
                connection.Open();
                var sql = "Select distinct district from doctorProcess3_tbl order By district ASC";
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
        //Load Hospital DropDownList
        public DataTable GetHospital()
        {
            try
            {
                connection.Open();
                var sql = "Select distinct hospitalName from tbl_service";
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

        //Load CityVillage
        public DataTable GetCityVillage()
        {
            try
            {
                connection.Open();
                var sql = "Select distinct subDistrict from doctorProcess3_tbl order By subDistrict ASC";
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

        //Load Doctor Category in Dropdown List from tbl_service
        public DataTable GetCategory()
        {
            try
            {
                connection.Open();
                var sql = "Select id, category from tbl_service";
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

        //View DoctorProfile
        public DataTable GetDoctorProfileInfo(string docUserId)
        {
            try
            {
                connection.Open();
                var sql = "Select *from tbl_doctorInfo where docUserId='" + docUserId + "'";
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



        public DataTable DeletedDoctorInfo(Label lblDelete)
        {
            connection.Open();
            var sql = "Delete from tbl_doctorInfo where docUserId='" + lblDelete.Text + "' ";
            command.Connection = connection;
            command.CommandType = CommandType.Text;
            command.CommandText = sql;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            connection.Close();
            return dt;
        }

        public DataTable GetAboutOrg()
        {
            try
            {
                connection.Open();
                var sql = "Select *from tbl_addOrganization";
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
        public DataTable GetOrgPhoto()
        {
            try
            {
                connection.Open();
                var sql = "Select orgPhoto from tbl_addOrganization";
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
        public DataTable GetAppointmentList(string docUserId)
        {
            try
            {
                connection.Open();
                var sql = "Select *from tbl_appointment where docUserId='" + docUserId + "'";
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

        public DataTable DeleteAboutOrg(Label lblDlete)
        {
            connection.Open();
            var sql = "Delete from tbl_addOrganization where id='" + lblDlete.Text + "' ";
            command.Connection = connection;
            command.CommandType = CommandType.Text;
            command.CommandText = sql;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            connection.Close();
            return dt;
        }

        public DataTable PublishedDoctorInfo(Label lblPublished)
        {
            try
            {
                connection.Open();
                var sql = "Update doctorProcess2_tbl set approverYN='Active' where doctorEmail='" + lblPublished.Text + "'";
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

        public int Update(Doctors doctor)
        {
            try
            {
                connection.Open();
                command = new SqlCommand("SP_UPDATE_DOCTORINFO", connection);
                command.Parameters.Add("@UserId", SqlDbType.NVarChar).Value = doctor.DoctorUserId;
                command.Parameters.Add("@fullName", SqlDbType.NVarChar).Value = doctor.Fullname;
                //command.Parameters.Add("@biorthDay", SqlDbType.NVarChar).Value = doctor.DateOFBirth;
                command.Parameters.Add("@category", SqlDbType.NVarChar).Value = doctor.Category;
                command.Parameters.Add("@designation", SqlDbType.NVarChar).Value = doctor.Designation;
                command.Parameters.Add("@about", SqlDbType.NVarChar).Value = doctor.About;
                command.Parameters.Add("@hospital", SqlDbType.NVarChar).Value = doctor.Hospital;
                command.Parameters.Add("@country", SqlDbType.NVarChar).Value = doctor.Country;
                command.Parameters.Add("@district", SqlDbType.NVarChar).Value = doctor.District;
                command.Parameters.Add("@cityOrVillage", SqlDbType.NVarChar).Value = doctor.CityOrVillage;
                //command.Parameters.Add("@DocPassword", SqlDbType.NVarChar).Value = doctor.Password;
                command.Parameters.Add("@email", SqlDbType.NVarChar).Value = doctor.Email;
                command.Parameters.Add("@phoneNo", SqlDbType.NVarChar).Value = doctor.PhoneNo;
                command.CommandType = CommandType.StoredProcedure;
                int temp = command.ExecuteNonQuery();
                return temp;

            }
            finally
            {

                connection.Close();
            }
        }

        public DataTable DeleteCategory(Label lblDlete)
        {
            connection.Open();
            var sql = "Delete from tbl_service where id='" + lblDlete.Text + "' ";
            command.Connection = connection;
            command.CommandType = CommandType.Text;
            command.CommandText = sql;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            connection.Close();
            return dt;
        }
        public DataTable GetDoctorInfoById(string docUserId)
        {
            try
            {
                connection.Open();
                var sql = "Select *from tbl_doctorInfo where docUserId='" + docUserId + "'";
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

        public DataTable UnPublishedDoctorInfo(Label lblUnPublished)
        {
            try
            {
                connection.Open();
                var sql = "Update doctorProcess2_tbl set approverYN='Pending' where doctorEmail='" + lblUnPublished.Text + "'";
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

        public DataTable GetApprovedDoctorInfo() //string categoryId
        {
            try
            {
                connection.Open();
                var sql = "Select d.photo,d.fullName,d.docUserId,d.designation,s.category,d.hospital,d.cityOrVillage,d.district,d.about,d.email FROM tbl_doctorInfo as d INNER JOIN dbo.tbl_service AS s ON d.category=s.id where publisedYN='Y'  "; //and category='" + categoryId + "'
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

        internal DataTable GetAllDetails()
        {
            try
            {
                connection.Open();
                var sql = "Select  p1.doctorFullName,p1.doctorEmail,s.category ,p2.photo,p2.designation,p3.id,p3.hospitalNmae,p3.chamberName,p3.district,p3.subDistrict,p3.days,p3.startTime,p3.endTime,p3.newVisit,p3.oldVisit from doctorProcess1_tbl as p1 inner join doctorProcess2_tbl as p2 on p1.doctorEmail=p2.doctorEmail inner join tbl_service as s  on s.id=p2.category inner join doctorProcess3_tbl as p3 on p1.doctorEmail=p3.doctorEmail where p2.approverYN='Active'";
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

        internal DataTable GetDoctorSpecialist(string docCategory)
        {
            try
            {
                connection.Open();
                var sql = "Select  p1.doctorFullName,p1.doctorEmail,s.category, p2.photo,p2.designation,p3.hospitalNmae,p3.chamberName,p3.district,p3.subDistrict,p3.days,p3.startTime,p3.endTime,p3.newVisit,p3.oldVisit from doctorProcess1_tbl as p1 inner join doctorProcess2_tbl as p2 on p1.doctorEmail=p2.doctorEmail inner join tbl_service as s  on s.id=p2.category inner join doctorProcess3_tbl as p3 on p1.doctorEmail=p3.doctorEmail where p2.approverYN='Active' and s.id='" + docCategory + "'";
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

        internal DataTable DoctorInfoAppointment(string doctorEmail)
        {
            try
            {
                connection.Open();
                var sql = "Select distinct p1.doctorFullName,p1.doctorEmail,s.category, p2.photo,p2.designation,p3.hospitalNmae,p3.chamberName,p3.district,p3.subDistrict,p3.days,p3.startTime,p3.endTime,p3.newVisit,p3.oldVisit from doctorProcess1_tbl as p1 inner join doctorProcess2_tbl as p2 on p1.doctorEmail=p2.doctorEmail inner join tbl_service as s  on s.id=p2.category inner join doctorProcess3_tbl as p3 on p1.doctorEmail=p3.doctorEmail where p2.approverYN='Active' and p1.doctorEmail='" + doctorEmail + "'";
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

        internal DataTable GetDocProfile(string docMail)
        {
            try
            {
                connection.Open();
                var sql = "Select distinct p1.doctorFullName,p1.doctorEmail,s.category ,p2.photo,p2.designation,p2.about,p3.hospitalNmae,p3.chamberName,p3.district,p3.subDistrict,p3.days,p3.startTime,p3.endTime,p3.newVisit,p3.oldVisit from doctorProcess1_tbl as p1 inner join doctorProcess2_tbl as p2 on p1.doctorEmail=p2.doctorEmail inner join tbl_service as s  on s.id=p2.category inner join doctorProcess3_tbl as p3 on p1.doctorEmail=p3.doctorEmail where p2.approverYN='Active' and p1.doctorEmail='" + docMail + "'";//var sql = "Select distinct p1.doctorFullName,p1.doctorEmail,s.category,p2.designation,p2.district,p2.photo, from doctorProcess1_tbl as p1 inner join doctorProcess2_tbl as p2 on p1.doctorEmail=p2.doctorEmail inner join tbl_service as s  on s.id=p2.category inner join doctorProcess3_tbl as p3 on p1.doctorEmail=p3.doctorEmail where p2.approverYN='Active' and p1.doctorEmail='" + docMail + "'";                
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

        internal DataTable GetDoctorHopitalInfo(string docMail)
        {
            try
            {
                connection.Open();
                var sql = "Select  p1.doctorFullName,p1.doctorEmail,s.category ,p2.photo,p2.designation,p3.id,p3.hospitalNmae,p3.chamberName,p3.district,p3.subDistrict,p3.days,p3.startTime,p3.endTime,p3.newVisit,p3.oldVisit from doctorProcess1_tbl as p1 inner join doctorProcess2_tbl as p2 on p1.doctorEmail=p2.doctorEmail inner join tbl_service as s  on s.id=p2.category inner join doctorProcess3_tbl as p3 on p1.doctorEmail=p3.doctorEmail where p2.approverYN='Active' and p1.doctorEmail='" + docMail + "'";
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

        internal DataTable GetAppointmentDateTime()
        {
            try
            {
                connection.Open();
                var sql = "select right(start_date,8) as time from Events";
                command.CommandType = CommandType.Text;
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
        

        internal DataTable GetDate()
        {
            try
            {
                connection.Open();
                var sql = "select left(start_date,6) as Dates from Events";
                command.CommandType = CommandType.Text;
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

        internal DataTable GetAppDateTime(string tdate)
        {
            try
            {
                connection.Open();
                var sql = "select right(start_date,8) as time from Events where Left(start_date,11)='" + tdate + "'";
                command.CommandType = CommandType.Text;
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

        internal DataTable GetApp_DateTime(string dateTimes)
        {
            try
            {
                connection.Open();
                var sql = "select start_date from Events where right(start_date,8)='" + dateTimes + "'";
                command.CommandType = CommandType.Text;
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

        internal DataTable GetDoctorbasicInfo(string docMail)
        {
            try
            {
                connection.Open();
                var sql  = "Select distinct p1.doctorFullName,p1.doctorEmail,s.category,p2.designation,p2.district,p2.photo,p2.about from doctorProcess1_tbl as p1 inner join doctorProcess2_tbl as p2 on p1.doctorEmail=p2.doctorEmail inner join tbl_service as s  on s.id=p2.category inner join doctorProcess3_tbl as p3 on p1.doctorEmail=p3.doctorEmail where p2.approverYN='Active' and p1.doctorEmail='" + docMail + "'";                
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

        internal DataTable GetDBasicInfo(string doctorEmail)
        {
            try
            {
                connection.Open();
                var sql = "Select distinct p1.doctorFullName,p1.doctorEmail,s.category,p2.designation,p2.district,p2.photo,p2.about from doctorProcess1_tbl as p1 inner join doctorProcess2_tbl as p2 on p1.doctorEmail=p2.doctorEmail inner join tbl_service as s  on s.id=p2.category inner join doctorProcess3_tbl as p3 on p1.doctorEmail=p3.doctorEmail where p2.approverYN='Active' and p1.doctorEmail='" + doctorEmail + "'";
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


        internal DataTable GetAllCountry()
        {
            try
            {
                connection.Open();
                var sql = "Select distinct country from doctorProcess2_tbl order By country ASC";
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
    }
}

