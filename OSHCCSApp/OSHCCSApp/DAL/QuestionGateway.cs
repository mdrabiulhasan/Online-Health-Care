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
    public class QuestionGateway:DBConnection
    {
        int row = 0;
        internal int Insert(Question aQuestion)
        {
            try
            {
                connection.Open();
                command = new SqlCommand("sp_askQuestion", connection);                
                command.Parameters.Add("@userFullName",SqlDbType.NVarChar).Value=aQuestion.UserFullName;
                command.Parameters.Add("@userPhoneNo", SqlDbType.NVarChar).Value = aQuestion.UserPhoneNo;
                command.Parameters.Add("@userEmail",SqlDbType.NVarChar).Value=aQuestion.UserEmail;
                command.Parameters.Add("@userQuestion",SqlDbType.NVarChar).Value=aQuestion.UserQuestion;                
                command.CommandType=CommandType.StoredProcedure;
                row = command.ExecuteNonQuery();
                return row;
            }
            finally
            {
                connection.Close();
            }
        }

        internal DataTable GetQuestionWithAns()
        {
            connection.Open();
            var sql = "Select q.userQuestion, aq.ansPhoto,left(aq.answerDetails, 200) as answer,p1.doctorEmail,p1.doctorFullName,p2.photo,s.category,p2.designation from askQuestion_tbl as q inner join answerQuestion_tbl as aq on q.id=aq.questionId inner join doctorProcess1_tbl as p1 on p1.doctorEmail=aq.doctorEmail inner join doctorProcess2_tbl as p2 on p2.doctorEmail=p1.doctorEmail inner join tbl_service as s  on s.id=p2.category";           
            command.CommandText = sql;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            connection.Close();
            return dt;
        }



        internal DataTable GetUserEmail(Label questons)
        {
            connection.Open();
            var sql = "Select *from askQuestion_tbl where id='" + questons.Text + "'";
            command.CommandText = sql;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            connection.Close();
            return dt;
            
        }

        internal int InsertAnswer(AnswerQuestion aQuestion)
        {
            connection.Open();
            command = new SqlCommand("sp_answerQuestion", connection);
            command.Parameters.Add("@questionId", SqlDbType.Int).Value = aQuestion.QuestionId;
            command.Parameters.Add("@doctorEmail",SqlDbType.NVarChar).Value = aQuestion.DoctorEmail;
            command.Parameters.Add("@answerDetails",SqlDbType.NVarChar).Value = aQuestion.AnswerDetails;
            command.Parameters.Add("@ansphoto",SqlDbType.NVarChar).Value = aQuestion.AnsPhoto;
            command.CommandType = CommandType.StoredProcedure;
            row = command.ExecuteNonQuery();
            connection.Close();
            return row;
        }

        internal DataTable GetQuestion()
        {
            connection.Open();
            var sql = "Select *from askQuestion_tbl";
            command.CommandText = sql;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            connection.Close();
            return dt;
        }

        internal DataTable GetTotalAnswerdId()
        {
            connection.Open();
            var sql = "Select Count(id) as TotalAnswerdId from answerQuestion_tbl";
            command.CommandText = sql;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            connection.Close();
            return dt;
        }

        internal int CountAnsImageRow()
        {
            try
            {
                connection.Open();
                var sql = "Select count(*) answerQuestion_tbl";
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

        internal DataTable ViewFullAnswer(string rmEmail)
        {
            connection.Open();
            var sql = "Select q.userQuestion, aq.ansPhoto,aq.answerDetails,p1.doctorEmail,p1.doctorFullName,p2.photo,s.category,p2.designation from askQuestion_tbl as q inner join answerQuestion_tbl as aq on q.id=aq.questionId inner join doctorProcess1_tbl as p1 on p1.doctorEmail=aq.doctorEmail inner join doctorProcess2_tbl as p2 on p2.doctorEmail=p1.doctorEmail inner join tbl_service as s  on s.id=p2.category where p1.doctorEmail='" + rmEmail + "'";

            command.CommandText = sql;
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            connection.Close();
            return dt;
        }

       
    }
}