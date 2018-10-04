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
    public partial class About : System.Web.UI.Page
    {
        ServiceManager sManager = new ServiceManager();
        DoctorManager dManager = new DoctorManager();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadChairmanInfo();
                LoadDirectorInfo();
                LoadAboutOrg();
            }
        }
        public void LoadChairmanInfo()
        {
            DataTable dt = sManager.GetChairmanInfo();
            DataListChairman.DataSource = dt;
            DataListChairman.DataBind();

        }

        public void LoadDirectorInfo()
        {
            DataTable dt = sManager.GetDirectorInfo();
            DataListDirector.DataSource = dt;
            DataListDirector.DataBind();

        }

        public void LoadAboutOrg()
        {
            DataTable dt = dManager.GetAboutOrg();
            DataListOrganization.DataSource = dt;
            DataListOrganization.DataBind();
        
        }
    }
}