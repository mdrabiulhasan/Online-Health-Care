using OSHCCSApp.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data;
namespace OSHCCSApp.DAL
{
    public class DoctorProcess1Gateway : DBConnection
    {
        int row = 0;
        internal int SaveProcess1(DoctorsProcess1 dp1)
        {
            connection.Open();
            command = new SqlCommand("sp_doctorProcess1", connection);
            command.Parameters.Add("@doctoFullName", SqlDbType.NVarChar).Value = dp1.DoctorFullname;
            command.Parameters.Add("@doctorPhone", SqlDbType.Int).Value = dp1.DcotorPhyone;
            command.Parameters.Add("@doctorEmail ", SqlDbType.NVarChar).Value = dp1.DoctorEmail;
            command.CommandType = CommandType.StoredProcedure;
            row = command.ExecuteNonQuery();
            connection.Close();
            return row;
        }
        internal bool IsAllreadyExist(string doctorEmail)
        {
            try
            {
                connection.Open();
                var sql = "Select Count(*) from doctorProcess2_tb where doctorEmail=@doctorEmail";
                command.CommandText = sql;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@doctorEmail", doctorEmail);
                return (int)command.ExecuteScalar() <= 0;

            }
            finally
            {
                connection.Close();
            }

        }
        internal int SaveProcess2(DoctorsProcess2 dp2)
        {
            try
            {
                connection.Open();
                command = new SqlCommand("sp_DoctorProcess2", connection);
                command.Parameters.Add("@birthDate", SqlDbType.NVarChar).Value = dp2.BirthDate;
                command.Parameters.Add("@nId", SqlDbType.NVarChar).Value = dp2.NId;
                command.Parameters.Add("@category", SqlDbType.NVarChar).Value = dp2.Category;
                command.Parameters.Add("@designation", SqlDbType.NVarChar).Value = dp2.Designation;
                command.Parameters.Add("@about", SqlDbType.NVarChar).Value = dp2.BmdcNo;
                command.Parameters.Add("@bmdcNo", SqlDbType.NVarChar).Value = dp2.About;
                command.Parameters.Add("@country", SqlDbType.NVarChar).Value = dp2.Country;
                command.Parameters.Add("@district", SqlDbType.NVarChar).Value = dp2.District;
                command.Parameters.Add("@cityOrVillage", SqlDbType.NVarChar).Value = dp2.CityOrVillage;
                command.Parameters.Add("@DocPassword", SqlDbType.NVarChar).Value = dp2.Password;
                command.Parameters.Add("@doctorEmail", SqlDbType.NVarChar).Value = dp2.DoctorEmail;
                command.Parameters.Add("@photo", SqlDbType.NVarChar).Value = dp2.Photo;
                command.CommandType = CommandType.StoredProcedure;
                row = command.ExecuteNonQuery();
            }
            finally
            {
                connection.Close();
            }
            return row;
        }



        internal int SaveProcess3(DoctorsProcess3 dp3)
        {
            try
            {
                connection.Open();
                command = new SqlCommand("sp_doctorProcess3", connection);
                command.Parameters.Add("@doctorEmail", SqlDbType.NVarChar).Value = dp3.DoctorEmail;
                command.Parameters.Add("@days", SqlDbType.NVarChar).Value = dp3.Days;
                command.Parameters.Add("@hospitalNmae", SqlDbType.NVarChar).Value = dp3.HospitalName;
                command.Parameters.Add("@chamberName", SqlDbType.NVarChar).Value = dp3.ChamberName;
                command.Parameters.Add("@startTime", SqlDbType.NVarChar).Value = dp3.StartTime;
                command.Parameters.Add("@endTime", SqlDbType.NVarChar).Value = dp3.EndTime;
                command.Parameters.Add("@newVisit", SqlDbType.NVarChar).Value = dp3.NewVisit;
                command.Parameters.Add("@oldVisit", SqlDbType.NVarChar).Value = dp3.OldVisit;
                command.Parameters.Add("@district", SqlDbType.NVarChar).Value = dp3.District;
                command.Parameters.Add("@subDistrict", SqlDbType.NVarChar).Value = dp3.SubDistrict;
                command.CommandType = CommandType.StoredProcedure;
                row = command.ExecuteNonQuery();
            }
            finally
            {
                connection.Close();
            }
            return row;
        }

        internal int SaveProcess4(DoctorsProcess4 dp4)
        {
            connection.Open();
            command = new SqlCommand("sp_consulting", connection);
            command.Parameters.Add("@doctorEmail", SqlDbType.NVarChar).Value = dp4.DoctorEmail;
            command.Parameters.Add("@days", SqlDbType.NVarChar).Value = dp4.Days;
            command.Parameters.Add("@tConsult", SqlDbType.NVarChar).Value = dp4.TConsult;
            command.Parameters.Add("@tPrice", SqlDbType.Int).Value = dp4.TPrice;
            command.Parameters.Add("@tStartTime", SqlDbType.NVarChar).Value = dp4.TStartTime;
            command.Parameters.Add("@tEndTime", SqlDbType.NVarChar).Value = dp4.TEndTime;
            command.Parameters.Add("@pConsult", SqlDbType.NVarChar).Value = dp4.PConsult;
            command.Parameters.Add("@pPrice", SqlDbType.Int).Value = dp4.PPrice;
            command.Parameters.Add("@pStartTime", SqlDbType.NVarChar).Value = dp4.PStartTime;
            command.Parameters.Add("@pEndtime", SqlDbType.NVarChar).Value = dp4.PEndTime;
            command.Parameters.Add("@vConsult", SqlDbType.NVarChar).Value = dp4.VConsult;
            command.Parameters.Add("@vPrice", SqlDbType.Int).Value = dp4.VPrice;
            command.Parameters.Add("@vStartTime", SqlDbType.NVarChar).Value = dp4.VStartTime;
            command.Parameters.Add("@vEndtime", SqlDbType.NVarChar).Value = dp4.VEndTime;
            command.CommandType = CommandType.StoredProcedure;
            row = command.ExecuteNonQuery();
            connection.Close();
            return row;
        }

        internal DataTable GetConsultantInfo()
        {
            try
            {
                connection.Open();
                var sql = "Select p1.doctorEmail, p1.doctorFullName,p2.photo,s.category, c.days,c.tConsult,c.tStartTime,c.tEndTime,c.tPrice,c.pStartTime,c.pEndTime,c.pConsult,c.pPrice,c.vConsult,c.vStartTime,c.vEndTime,c.vPrice from doctorProcess1_tbl as p1 inner join doctorProcess2_tbl as p2 on p1.doctorEmail=p2.doctorEmail inner join tbl_service as s on s.id=p2.category inner join consulting_tbl as c on p1.doctorEmail=c.doctorEmail";
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
        internal int CountImageRow()
        {
            try
            {
                connection.Open();
                var sql = "Select count(*) doctorProcess2_tbl";
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

        internal DataTable GetDoctorInfoForUpdate(string docEmail)
        {
            connection.Open();
            var sql = "Select *from doctorProcess2_tbl";
            command.CommandText = sql;
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            connection.Close();
            return dt;
        }

        internal DataTable GetDoctorProfileInfo(string docEamil)
        {
            connection.Open();
            var sql = "Select p1.doctorFullName,s.category,p2.approverYN,p2.nId,p2.bmdcNo,p2.about,p2.cityOrVillage,p2.district,p2.country,p2.photo,p2.designation,p2.cityOrVillage, p2.district from doctorProcess1_tbl as p1 inner join doctorProcess2_tbl as p2 on p1.doctorEmail=p2.doctorEmail inner join tbl_service as s on s.id=p2.category where p1.doctorEmail='" + docEamil + "'";
            command.CommandText = sql;
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            connection.Close();
            return dt;
        }

        public DataTable GetConsultantByCategory(string docCategory)
        {
            try
            {
                connection.Open();
                var sql = "Select p1.doctorEmail,p1.doctorFullName,p2.photo,s.category,c.days,c.tConsult,c.tStartTime,c.tEndTime,c.tPrice,c.pStartTime,c.pEndTime,c.pConsult,c.pPrice,c.vConsult,c.vStartTime,c.vEndTime,c.vPrice from doctorProcess1_tbl as p1 inner join doctorProcess2_tbl as p2 on p1.doctorEmail=p2.doctorEmail inner join consulting_tbl as c on p1.doctorEmail=c.doctorEmail inner join tbl_service as s on s.id=p2.category where p2.category='" + docCategory + "' and p2.approverYN='Active'";
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

        internal DataTable GetDocConsultInfo(string docMail)
        {
            try
            {
                connection.Open();
                var sql = "Select p1.doctorEmail,p1.doctorFullName,p2.photo,s.category, c.days,c.tConsult,c.tStartTime,c.tEndTime,c.tPrice,c.pStartTime,c.pEndTime,c.pConsult,c.pPrice,c.vConsult,c.vStartTime,c.vEndTime,c.vPrice from doctorProcess1_tbl as p1 inner join doctorProcess2_tbl as p2 on p1.doctorEmail=p2.doctorEmail inner join tbl_service as s on s.id=p2.category inner join consulting_tbl as c on p1.doctorEmail=c.doctorEmail where c.doctorEmail='" + docMail + "'";
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

        internal DataTable GetNewQuestion()
        {
            try
            {
                connection.Open();
                var sql = "Select Count(id) as TotalNewQuestion from askQuestion_tbl where status='N'";
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

        internal DataTable GetDoctorHopitalDetails(string docEamil)
        {
            try
            {
                connection.Open();
                var sql = "Select  p1.doctorFullName,p1.doctorEmail,s.category ,p2.photo,p2.designation,p3.hospitalNmae,p3.chamberName,p3.district,p3.subDistrict,p3.days,p3.startTime,p3.endTime,p3.newVisit,p3.oldVisit from doctorProcess1_tbl as p1 inner join doctorProcess2_tbl as p2 on p1.doctorEmail=p2.doctorEmail inner join tbl_service as s  on s.id=p2.category inner join doctorProcess3_tbl as p3 on p1.doctorEmail=p3.doctorEmail where p2.approverYN='Active' and p1.doctorEmail='" + docEamil + "'";
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

        internal DataTable GetDocConsultDetails(string docEamil)
        {
            try
            {
                connection.Open();
                var sql = "Select p1.doctorFullName,p2.photo,s.category, c.days,c.tConsult,c.tStartTime,c.tEndTime,c.tPrice,c.pStartTime,c.pEndTime,c.pConsult,c.pPrice,c.vConsult,c.vStartTime,c.vEndTime,c.vPrice from doctorProcess1_tbl as p1 inner join doctorProcess2_tbl as p2 on p1.doctorEmail=p2.doctorEmail inner join tbl_service as s on s.id=p2.category inner join consulting_tbl as c on p1.doctorEmail=c.doctorEmail where c.doctorEmail='" + docEamil + "'";
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

        internal DataTable GetTextConsult(string docMailForText)
        {
            try
            {
                connection.Open();
                var sql = "Select p1.doctorFullName, cp.tConsult,cp.tPrice from consulting_tbl as cp inner join doctorProcess1_tbl as p1 on p1.doctorEmail=cp.doctorEmail where cp.doctorEmail='" + docMailForText + "'";
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

        internal DataTable GetPhoneConsult(string docMailForPhone)
        {
            try
            {
                connection.Open();
                // var sql = "Select pConsult,pPrice from consulting_tbl  where doctorEmail='" + docMailForPhone + "'";
                var sql = "Select p1.doctorFullName,cp.pConsult,cp.pPrice from consulting_tbl as cp inner join doctorProcess1_tbl as p1 on p1.doctorEmail=cp.doctorEmail where cp.doctorEmail='" + docMailForPhone + "'";
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

        internal DataTable GetVideoConsultInfo(string docMailForViedo)
        {
            try
            {
                connection.Open();
                var sql = "Select vConsult,vPrice from consulting_tbl where doctorEmail='" + docMailForViedo + "'";
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

    }
}

