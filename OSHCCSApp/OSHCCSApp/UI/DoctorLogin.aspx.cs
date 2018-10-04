using OSHCCSApp.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OSHCCSApp.UI
{
    public partial class DoctorLogin : System.Web.UI.Page
    {
        DoctorLoginManager _dlManager = new DoctorLoginManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string docEmail = txtDoctorEmail.Text.Trim();
            string docPassword = txtdoctorPassword.Text.Trim();
            if (!string.IsNullOrEmpty(docEmail) && !string.IsNullOrEmpty(docPassword))
            {
                if (_dlManager.DocLogin(docEmail, docPassword))
                {
                    Session["doctorEmail"] = docEmail;
                    Response.Redirect("DoctorsProfile.aspx");
                }
                else
                {
                    warningPanel.Visible = true;
                    errorName.InnerHtml = "Warning";
                    errorText.InnerHtml = "User Not Exist.";
                }
            }
            else
            {
                warningPanel.Visible = true;
                errorName.InnerHtml = "Warning";
                errorText.InnerHtml = "Please Inser Your Email and Password!";
            }
        }
    }
}