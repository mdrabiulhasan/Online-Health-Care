using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using OSHCCSApp.BLL;
using OSHCCSApp.Model;

namespace OSHCCSApp
{
    public partial class OnlineConsultForm : System.Web.UI.Page
    {
        DoctorProcessManager _dpManager = new DoctorProcessManager();
        ConsultPatientManager _cpManager = new ConsultPatientManager();
        string docMailForText, docMailForPhone,docMailForViedo;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["TextEmail"] != null)
                {
                    docMailForText = Session["TextEmail"].ToString();
                    LoadConsultType(docMailForText);
                    Session.Remove("PhoneEmail");
                    Session.Remove("VideoEmail");
                }
                if (Session["PhoneEmail"] != null)
                {
                    docMailForPhone = Session["PhoneEmail"].ToString();
                    LoadPhoneConsult(docMailForPhone);
                    Session.Remove("TextEmail");
                    Session.Remove("VideoEmail");
                }
                if (Session["VideoEmail"]!=null)
                {
                    docMailForViedo = Session["VideoEmail"].ToString();
                    LoadVideoConsultInfo(docMailForViedo);
                    Session.Remove("PhoneEmail");
                    Session.Remove("TextEmail");
                    
                }
               

            }

        }      

        private void LoadPhoneConsult(string docMailForText)
        {
            DataTable dt = _dpManager.GetPhoneConsult(docMailForPhone);
            if (dt.Rows.Count > 0)
            {
                lblConsultType.Text = dt.Rows[0]["pConsult"].ToString();
                lblPrice.Text = dt.Rows[0]["pPrice"].ToString();
                lblDocName.Text = dt.Rows[0]["doctorFullName"].ToString();
            }
        }

        private void LoadConsultType(string docMailForText)
        {
            DataTable dt = _dpManager.GetTextConsult(docMailForText);
            if (dt.Rows.Count > 0)
            {
                lblConsultType.Text = dt.Rows[0]["tConsult"].ToString();
                lblPrice.Text = dt.Rows[0]["tPrice"].ToString();
                lblDocName.Text = dt.Rows[0]["doctorFullName"].ToString();
            }
        }

        private void LoadVideoConsultInfo(string docMailForViedo)
        {
            DataTable dt = _dpManager.GetVideoConsultInfo(docMailForViedo);
            if (dt.Rows.Count > 0)
            {
                lblConsultType.Text = dt.Rows[0]["vConsult"].ToString();
                lblPrice.Text = dt.Rows[0]["vPrice"].ToString();
               // lblDocName.Text = dt.Rows[0]["doctorFullName"].ToString();
            }
        }
        protected void btnOnlineConsult_Click(object sender, EventArgs e)
        {
            ConsultPatient cPatient = new ConsultPatient();
            if (!string.IsNullOrEmpty(txtPatientName.Text) || !string.IsNullOrEmpty(txtEmailAddress.Text) || !string.IsNullOrEmpty(txtPhone.Text))
            {
                if (Session["PhoneEmail"] != null)
                {
                    cPatient.DoctorEmail = Session["PhoneEmail"].ToString();
                }
                if (Session["TextEmail"] != null)
                {
                    cPatient.DoctorEmail = Session["TextEmail"].ToString();
                }
                if (Session["VideoEmail"] != null)
                {
                    cPatient.DoctorEmail = Session["VideoEmail"].ToString();
                }
                
                cPatient.PatientName = txtPatientName.Text;
                cPatient.PhoneNo = txtPhone.Text;
                cPatient.PatientEmail = txtEmailAddress.Text.Trim();
                cPatient.ConsultType = lblConsultType.Text;
                int rowCount = _cpManager.Save(cPatient);
                if(rowCount>0)
                {
                    warningPanel.Visible = false;
                    successpanel.Visible = true;
                    successText.InnerHtml = "You are registered Successfully.";
                }
            }
            else
            {
                successpanel.Visible = false;
                warningPanel.Visible = true;
                errorName.InnerHtml = "Field Cannot be Empty!";
            }

        }
    }
}