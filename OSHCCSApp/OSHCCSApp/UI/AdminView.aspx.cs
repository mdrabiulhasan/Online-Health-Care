using OSHCCSApp.BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OSHCCSApp.UI
{
    public partial class AdminView : System.Web.UI.Page
    {
        AdminManager aManager = new AdminManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadAdminInfo();
            }
        }

        public void LoadAdminInfo() 
        {
            DataTable dt = aManager.GetAllAdminInfo();
            admingridView.DataSource = dt;
            admingridView.DataBind();
        }
        protected void admingridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label lblDelete = (Label)admingridView.Rows[e.RowIndex].FindControl("lblDeleteAdmin");
            DataTable dt = aManager.DeleteAdmin(lblDelete);
            admingridView.DataSource = dt;
            admingridView.DataBind();

        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            LoadAdminInfo();

        }

        protected void brnSearch_Click(object sender, EventArgs e)
        {
            string UserId = txtAdminId.Text.Trim();
            if (UserId != null)
            {
                DataTable dt = aManager.GetAdminInfoById(UserId);
                admingridView.DataSource = dt;
                admingridView.DataBind();
            }
        }
    }
}