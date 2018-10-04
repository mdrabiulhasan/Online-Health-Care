using OSHCCSApp.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using OSHCCSApp.Model;

namespace OSHCCSApp.UI
{
    public partial class AppointmentForm : System.Web.UI.Page
    {
        QuestionManager _qManager = new QuestionManager();
        DoctorManager dManager = new DoctorManager();
        AppointmentManager _apManager = new AppointmentManager();
        string doctorEmail, dateTimes,hospitalName;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Email"] != null)
                {
                    doctorEmail = Session["Email"].ToString();
                    Session.Remove("docMail");                   
                }
                if (Session["docMail"] != null)
                {
                    doctorEmail = Session["docMail"].ToString();
                    Session.Remove("Email");
                }
                LoadDoctorInfoAppointment(doctorEmail);

                if (Session["aTime"] != null)
                {
                    dateTimes = Session["aTime"].ToString();
                    LoadApp_DateTime(dateTimes);
                }
            }

        }
        private void LoadDoctorInfoAppointment(string doctorEmail)
        {
            DataTable dt = dManager.DoctorInfoAppointment(doctorEmail);
            dlDocAppointments.DataSource = dt;
            dlDocAppointments.DataBind();
            
        }

        private void LoadApp_DateTime(string dateTimes)
        {
            DataTable dt = dManager.GetApp_DateTime(dateTimes);
            if (dt.Rows.Count > 0)
            {
                lblGetDateTime.Text = dt.Rows[0]["start_date"].ToString();
            }
            else
            {
                lblGetDateTime.Text = string.Empty;
            }
        }

        protected void btnAppointment_Click(object sender, EventArgs e)
        {
            DAppointment dpAppointments = new DAppointment();
            if (!string.IsNullOrEmpty(txtPatientName.Text) || !string.IsNullOrEmpty(txtEmailAddress.Text) || !string.IsNullOrEmpty(txtPhone.Text))
            {
                //dpAppointments.DoctorName=
                dpAppointments.DoctorEmail =Session["Email"].ToString();
                dpAppointments.PatientName = txtPatientName.Text;
                dpAppointments.AppointmentDate = lblGetDateTime.Text;
                dpAppointments.PatientEmail = txtEmailAddress.Text;
                dpAppointments.PatientPhone = txtPhone.Text;
              //dpAppointments.HospitalName = 

                int rowCount = _apManager.Save(dpAppointments);
                if (rowCount > 0)
                {
                    lblMsg.Text = "Registered Successfully ";                   
                }
            }
            else
            {
                //lblMsg.Text = "field cannot be Empty.Please Insert!";
                Response.Write("<script>alert('Field cannot be Empty.Please Insert Your Correct Info!')</script>");
            }
        }
       
       
    }
}