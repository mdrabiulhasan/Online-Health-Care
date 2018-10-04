using OSHCCSApp.BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OSHCCSApp.MasterPage
{
    public partial class ForDoctor : System.Web.UI.MasterPage
    {
        DoctorManager dManager = new DoctorManager();
        DoctorProcessManager _dpManager = new DoctorProcessManager();
        UserManager uManager = new UserManager();
        string docEamil;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["doctorEmail"] != null)
            {
                docEamil = Session["doctorEmail"].ToString();

            }
            GetDoctorProfileInfo(docEamil);
            GetDocProfilePhoto(docEamil);
        }
        public void GetDoctorProfileInfo(string docEamil)
        {
            DataTable dt = _dpManager.GetDoctorProfileInfo(docEamil);
            DataListDoctorLog.DataSource = dt;
            DataListDoctorLog.DataBind();

        }
        public void GetDocProfilePhoto(string docEamil) 
        {
            DataTable dt = _dpManager.GetDoctorProfileInfo(docEamil);
            DLDoctorLog.DataSource = dt;
            DLDoctorLog.DataBind();
        
        }
        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            Session.Remove("docEamil");
            Session.RemoveAll();
            Response.Redirect("DoctorLogin.aspx");
        }
    }
}