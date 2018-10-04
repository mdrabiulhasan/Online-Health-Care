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
    public partial class Admin : System.Web.UI.MasterPage
    {
        AdminManager aManager = new AdminManager();
        string userId;
        protected void Page_Load(object sender, EventArgs e)
        {  
            if (Session["userId"]!=null)
            {
               userId=Session["userId"].ToString();
            }
            AccessAdmin(userId);

        }
        public void AccessAdmin( string userId)
        { 
            DataTable dt=aManager.GetAdmin(userId);
            DataListAdminLog.DataSource = dt;
            DataListAdminLog.DataBind();

        }
        protected void btnAdminLogout_Click(object sender, EventArgs e)
        {
            Session.Remove("userId");
            Session.RemoveAll();
            Response.Redirect("AdminLogin.aspx");
        }

    }
}