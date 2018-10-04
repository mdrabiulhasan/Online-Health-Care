using OSHCCSApp.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace OSHCCSApp.UI
{
    public partial class LabDetails : System.Web.UI.Page
    {
        LabTestInfoManager _ltManager = new LabTestInfoManager();
        string lname;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LabName"]!=null)
            {
                lname = Session["LabName"].ToString();
                LoadLabDetails(lname);
            }

        }

        private void LoadLabDetails(string lname)
        {
            DataTable dt = _ltManager.GetLabDetails(lname);
            dlLabDetails.DataSource = dt;
            dlLabDetails.DataBind();
        }
    }
}