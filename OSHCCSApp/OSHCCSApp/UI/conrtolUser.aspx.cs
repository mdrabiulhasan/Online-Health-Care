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
    public partial class conrtolUser : System.Web.UI.Page
    {
        UserManager uManager = new UserManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadUserGridView();
            }
        }

        public void LoadUserGridView()
        {
            DataTable dt = uManager.GetAllUser();
            userGridView.DataSource = dt;
            userGridView.DataBind();
        }

        protected void userGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

       
    }
}