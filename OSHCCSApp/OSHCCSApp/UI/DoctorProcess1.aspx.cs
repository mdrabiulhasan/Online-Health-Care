using OSHCCSApp.BLL;
using OSHCCSApp.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OSHCCSApp.UI
{
    public partial class DoctorProcess1 : System.Web.UI.Page
    {
        DoctorProcessManager _dpManager = new DoctorProcessManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnProcess1_Click(object sender, EventArgs e)
        {
            DoctorsProcess1 dp1 = new DoctorsProcess1();
            if(!string.IsNullOrEmpty(txtDFullName.Text) || !string.IsNullOrEmpty(txtPhone.Text) || !string.IsNullOrEmpty(txtEmailAddress.Text))
            {
                dp1.DoctorFullname = txtDFullName.Text.Trim();
                dp1.DcotorPhyone = Convert.ToInt32(txtPhone.Text);
                dp1.DoctorEmail = txtEmailAddress.Text.Trim();             
                int rowCount = _dpManager.SaveProcess1(dp1);
                if (rowCount > 0)
                {
                    Session["DoctorEmail"] = txtEmailAddress.Text.Trim();
                    Response.Redirect("DoctorProcess2.aspx");
                    return;
                }
                else {
                    lblMessage.Text = "Process 1 is not complete.Try again!";
                }

            }
            else
            {
                lblMessage.Text = "Field Cannot be Empty!";
            }
            
        }
    }
}