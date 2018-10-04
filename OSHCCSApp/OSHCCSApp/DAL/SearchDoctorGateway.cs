using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


namespace OSHCCSApp.DAL
{
    public class SearchDoctorGateway: DBConnection
    {
        //Search Doctor using District Dropdown List
        public DataTable SearchDoctor(string district)
        {

            connection.Open();
            var sql = "Select p1.doctorFullName,p1.doctorEmail,s.category, p2.photo,p2.designation,p3.hospitalNmae,p3.chamberName,p3.district,p3.subDistrict,p3.days,p3.startTime,p3.endTime,p3.newVisit,p3.oldVisit from doctorProcess1_tbl as p1 inner join doctorProcess2_tbl as p2 on p1.doctorEmail=p2.doctorEmail inner join tbl_service as s  on s.id=p2.category inner join doctorProcess3_tbl as p3 on p1.doctorEmail=p3.doctorEmail where p2.approverYN='Active' and p3.district='" + district + "'";
            command.Connection = connection;
            command.CommandText = sql;
            command.CommandType = CommandType.Text;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable tb = new DataTable();
            da.Fill(tb);
            connection.Close();
            return tb;

        }

        public DataTable SearchDoctorByCity(string cityOrVillage)
        {
            connection.Open();
            var query = "Select  p1.doctorFullName,p1.doctorEmail,s.category, p2.photo,p2.designation,p3.hospitalNmae,p3.chamberName,p3.district,p3.subDistrict,p3.days,p3.startTime,p3.endTime,p3.newVisit,p3.oldVisit from doctorProcess1_tbl as p1 inner join doctorProcess2_tbl as p2 on p1.doctorEmail=p2.doctorEmail inner join tbl_service as s  on s.id=p2.category inner join doctorProcess3_tbl as p3 on p1.doctorEmail=p3.doctorEmail where p2.approverYN='Active' and p3.subDistrict='" + cityOrVillage + "'";
            command.Connection = connection;
            command.CommandText = query;
            command.CommandType = CommandType.Text;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable tb = new DataTable();
            da.Fill(tb);
            connection.Close();

            return tb;
        }

        public DataTable SearchByCategory(string category)
        {
            connection.Open();            
            var sql = "Select  p1.doctorFullName,p1.doctorEmail,s.category, p2.photo,p2.designation,p3.hospitalNmae,p3.chamberName,p3.district,p3.subDistrict,p3.days,p3.startTime,p3.endTime,p3.newVisit,p3.oldVisit from doctorProcess1_tbl as p1 inner join doctorProcess2_tbl as p2 on p1.doctorEmail=p2.doctorEmail inner join tbl_service as s  on s.id=p2.category inner join doctorProcess3_tbl as p3 on p1.doctorEmail=p3.doctorEmail where p2.approverYN='Active' and p2.category='" + category + "'";
            command.Connection = connection;
            command.CommandText = sql;
            command.CommandType = CommandType.Text;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable tb = new DataTable();
            da.Fill(tb);            

            connection.Close();
            return tb;
        }

        //public DataTable SelectCategory(string category)
        //{
        //    connection.Open();
        //    var query = "Select *from tbl_doctorInfo where category='" + category + "' and publisedYN='Y' ";
        //    command.Connection = connection;
        //    command.CommandText = query;
        //    command.CommandType = CommandType.Text;
        //    SqlDataAdapter da = new SqlDataAdapter(command);
        //    DataTable tb = new DataTable();
        //    da.Fill(tb);
        //    connection.Close();
        //    return tb;
        //}

        internal DataTable FilterByDistrict()
        {
            connection.Open();
            var sql = "Select p1.doctorFullName,p1.doctorEmail,s.category, p2.photo,p2.designation,p3.hospitalNmae,p3.chamberName,p3.district,p3.subDistrict,p3.days,p3.startTime,p3.endTime,p3.newVisit,p3.oldVisit from doctorProcess1_tbl as p1 inner join doctorProcess2_tbl as p2 on p1.doctorEmail=p2.doctorEmail inner join tbl_service as s  on s.id=p2.category inner join doctorProcess3_tbl as p3 on p1.doctorEmail=p3.doctorEmail where p2.approverYN='Active' and p3.district='Dhaka'";
            command.Connection = connection;
            command.CommandText = sql;
            command.CommandType = CommandType.Text;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable tb = new DataTable();
            da.Fill(tb);
            connection.Close();
            return tb;
        }
    }
}