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
    public partial class DoctorLog : System.Web.UI.Page
    {
        DoctorLoginManager LManager = new DoctorLoginManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
               // DoctorLogin dLogin = new DoctorLogin();
                string DoctorUserId = txtDoctorUserName.Text.Trim();
                string Password = txtdoctorPassword.Text.Trim();
                if (LManager.DoctorLogin(DoctorUserId, Password))
                {
                    Session["UserId"] = txtDoctorUserName.Text;
                    Session["Password"] = Password;
                    //Response.Redirect("DoctorProfile.aspx");
                    Response.Redirect("DoctorsProfile.aspx");
                }
                else
                {
                    warningPanel.Visible = true;
                    errorName.InnerHtml = "Warning";
                    errorText.InnerHtml = "User Not Exist.";
                }

            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}