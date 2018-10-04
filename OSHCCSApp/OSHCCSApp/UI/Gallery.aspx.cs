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
    public partial class Gallery : System.Web.UI.Page
    {
        DoctorManager dManager = new DoctorManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadoctorPhoto();
                LoadProductPhoto();
            }
        }

        public void LoadoctorPhoto()
        {
            DataTable dt = dManager.GetDoctorInfo();
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
        public void LoadProductPhoto()
        {
            DataTable dt = dManager.GetOrgPhoto();
            DataList2.DataSource = dt;
            DataList2.DataBind();
        }
    }
}