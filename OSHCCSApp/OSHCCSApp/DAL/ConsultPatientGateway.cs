using OSHCCSApp.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace OSHCCSApp.DAL
{
    public class ConsultPatientGateway:DBConnection
    {
        int rowAffected = 0;
        internal int Insert(ConsultPatient cPatient)
        {
            try
            {
                connection.Open();
                command = new SqlCommand("sp_ConsultPatient",connection);
                command.Parameters.Clear();
                command.Parameters.Add("@doctorEmail", SqlDbType.NVarChar).Value = cPatient.DoctorEmail;
                command.Parameters.Add("@patientName", SqlDbType.NVarChar).Value = cPatient.PatientName;
                command.Parameters.Add("@phoneNo", SqlDbType.NVarChar).Value = cPatient.PhoneNo;
                command.Parameters.Add("@patientEmail", SqlDbType.NVarChar).Value = cPatient.PatientEmail;
                command.Parameters.Add("@consultType", SqlDbType.NVarChar).Value = cPatient.ConsultType;
                //command.Parameters.Add("@duration", SqlDbType.NVarChar).Value = cPatient.Duration; 
                command.CommandType = CommandType.StoredProcedure;
                rowAffected = command.ExecuteNonQuery();                
                connection.Close();
                return rowAffected;
            }
            catch (Exception)
            {
                
                throw;
            }
        }

        internal DataTable GetAllConsultList(string docEamil)
        {
            try
            {
                connection.Open();
                var query = "Select *From consultPatient_tbl where doctorEmail='" + docEamil + "'";
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