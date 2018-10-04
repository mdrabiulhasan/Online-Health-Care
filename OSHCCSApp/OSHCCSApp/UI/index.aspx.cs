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
    public partial class index : System.Web.UI.Page
    {
        CustomerPackageManager _cpManager = new CustomerPackageManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadNonApprovedDoctor();
            LoadApprovedDoc();
            LoadNewOrders();
        }

        public void LoadApprovedDoc()
        {
            DataTable dt = _cpManager.GetApprovedDoctors();
            if (dt.Rows.Count > 0)
            {
                lblTotalApprovedDoc.Text = dt.Rows[0]["totalApprovedDoctor"].ToString();
            }
            else
            {
                lblTotalApprovedDoc.Text = string.Empty;
            }
        }

        public void LoadNonApprovedDoctor()
        {
            DataTable dt = _cpManager.GetNewDoctors();
            if(dt.Rows.Count>0)
            {
                lblTotalDoc.Text = dt.Rows[0]["totalNewDoctor"].ToString();
            }
            else{
            lblTotalDoc.Text=string.Empty;
            }
        }


        public void LoadNewOrders()
        {
            DataTable dt = _cpManager.GetNewOrders();
            if (dt.Rows.Count > 0)
            {
                lblTotalNewOrders.Text = dt.Rows[0]["OrderId"].ToString();
            }
            else
            {
                lblTotalNewOrders.Text = string.Empty;
            }

        }
    }
}