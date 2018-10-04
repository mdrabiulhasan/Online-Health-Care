using OSHCCSApp.BLL;
using OSHCCSApp.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OSHCCSApp.UI
{
    public partial class Appointment : System.Web.UI.Page
    {
        UserManager uManager = new UserManager();
        string uId;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["paitenUserId"]!=null)
            {
                uId=Session["paitenUserId"].ToString();
            }
            LoadUserInfo(uId);
            GetUser(uId);
        }
        public void GetUser(string uId)
        {
            DataTable dt = uManager.GetUserInfo(uId);
            appoinmentDatalist.DataSource = dt;
            appoinmentDatalist.DataBind();
        }
        public void LoadUserInfo(string uId)
        {
            DataTable dt = uManager.GetUserInfo(uId);
            if (dt.Rows.Count > 0)
            {
                txtPatientName.Text = dt.Rows[0]["fullName"].ToString();
                txtPatientPhone.Text = dt.Rows[0]["phoneNo"].ToString();
            }
        }

        protected void btnAppointment_Click(object sender, EventArgs e)
        {
            Appointments ap = new Appointments();
            ap.DocUserId = txtDocId.Text.Trim();
            ap.PaitenUserId = Session["paitenUserId"].ToString();
            ap.AppointmentDate = txtAppoinmentDate.Value;
            ap.DoctorName = txtDocFullName.Text.Trim();
            ap.PatientName = txtPatientName.Text.Trim();
            ap.Place = txtPlace.Text;
            ap.Hospital = txtHospitalName.Text;
            ap.Duration = ddTimeSelect.SelectedItem.Value;            
            ap.CurrentDate = DateTime.Now.ToString("yyyy-MM-dd");
            ap.PatientPhoneNo = txtPatientPhone.Text.Trim();

            int CountRows = uManager.Save(ap);
            if (CountRows > 0)
            {
                successPanel.Visible = true;
                alertText.InnerHtml = "Your appointment schedule are successfull. ";
            }
            else {
                successPanel.Visible = false;
                warningPanel.Visible = true;
                errorText.InnerHtml = "Do not Saved.Please try again!";
            }


           
           
        }

       
    }
}