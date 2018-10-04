using OSHCCSApp.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
namespace OSHCCSApp.DAL
{
    public class AppoinmentGateway:DBConnection
    {
        int row = 0;
        internal int Insert(DAppointment dpAppointments)
        {
            try
            {
                connection.Open();
                command = new SqlCommand("sp_appointment", connection);
                command.Parameters.Clear();
                command.Parameters.Add("@doctorEmail", SqlDbType.NVarChar).Value = dpAppointments.DoctorEmail;
                command.Parameters.Add("@patientName",SqlDbType.NVarChar).Value = dpAppointments.PatientName;
                command.Parameters.Add("@appointmentDate",SqlDbType.NVarChar).Value = dpAppointments.AppointmentDate;
                command.Parameters.Add("@patientEmail",SqlDbType.NVarChar).Value = dpAppointments.PatientEmail;
                command.Parameters.Add("@paitentPhone", SqlDbType.NVarChar).Value = dpAppointments.PatientPhone;
               //ommand.Parameters.Add("@hospitalName", SqlDbType.NVarChar).Value = dpAppointments.HospitalName;
                command.CommandType = CommandType.StoredProcedure;
                row = command.ExecuteNonQuery();
                return row;
            }
            finally
            {

                connection.Close();
            }
        }

        internal DataTable GetAllAppointment(string dEmail)
        {
            connection.Open();
            var sql = "Select * from appointment_tbl where doctorEmail='" + dEmail + "'"; 
            command.Connection = connection;
            command.CommandType = CommandType.Text;
            command.CommandText = sql;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);            
            connection.Close();
            return dt;
        }
    }
}