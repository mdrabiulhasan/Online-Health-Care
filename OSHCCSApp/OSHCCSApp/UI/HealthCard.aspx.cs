using OSHCCSApp.BLL;
using OSHCCSApp.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OSHCCSApp.UI
{
    public partial class HealthCard : System.Web.UI.Page
    {
        ServiceManager _SManager = new ServiceManager();
        CustomerPackageManager _cpManager = new CustomerPackageManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadPackageInfo();
            }

        }

        public void LoadPackageInfo()
        {
            DataTable dt = _cpManager.GetAllPackage();
            DataListPackages.DataSource = dt;
            DataListPackages.DataBind();
        }

       

        

    }
}