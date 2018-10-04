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
    public partial class UserSide : System.Web.UI.MasterPage
    {
        DoctorManager dManager = new DoctorManager();
        UserManager uManager = new UserManager();
        string docUserId, uId;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] != null)
            {
                docUserId = Session["UserId"].ToString();

            }

            if (Session["paitenUserId"] != null)
            {
                uId = Session["paitenUserId"].ToString();
            }
            
            GetUser(uId);
           // GetDoctorProfileInfo(docUserId);
        }

        public void GetUser(string uId)
        {
            DataTable dt = uManager.GetUserInfo(uId);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        public void GetDoctorProfileInfo(string docUserId)
        {
            DataTable dt = dManager.GetDoctorProfileInfo(docUserId);
            DataListDoctorLog.DataSource = dt;
            DataListDoctorLog.DataBind();
        
        }

        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            Session.Remove("UserId");
            Session.RemoveAll();
            Response.Redirect("DoctorLog.aspx");
        }

        protected void ULogoutButton_Click(object sender, EventArgs e)
        {
            Session.Remove("paitenUserId");
            Session.RemoveAll();
            Response.Redirect("OHCCS.aspx");
        }
    }
}