using OSHCCSApp.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OSHCCSApp.UI
{
    public partial class UserLogin1 : System.Web.UI.Page
    {
        UserManager uManager = new UserManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string uId = txtPatientUserName.Text.Trim();
            string uPassword = txtPatientPassword.Text.Trim();
            try
            {
                if (uManager.UserLogin(uId, uPassword))
                {
                    Session["paitenUserId"] = txtPatientUserName.Text.Trim();
                    Session["UserPassword"] = uPassword;
                    Response.Redirect("Appointment.aspx");
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