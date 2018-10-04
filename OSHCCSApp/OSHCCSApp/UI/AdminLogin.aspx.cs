using OSHCCSApp.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OSHCCSApp.UI
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        AdminManager aManager = new AdminManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            string userName = txtUserName.Text.Trim();
            string password = txtPassword.Text.Trim();
            if (aManager.AdminLogin(userName, password))
            {
                Session["userId"] = txtUserName.Text.Trim();
                Response.Redirect("index.aspx");

            }
            else
            {
                warningPanel.Visible = true;
                errorText.InnerHtml = "User Not Exist.";
            }

        }
    }
}