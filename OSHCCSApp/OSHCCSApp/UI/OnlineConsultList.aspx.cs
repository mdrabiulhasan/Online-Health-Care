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
    public partial class OnlineConsultList : System.Web.UI.Page
    {
        ConsultPatientManager _cpManager = new ConsultPatientManager();
        string docEamil,pId;
        DataTable dt = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Session["doctorEmail"] != null)
                {
                    docEamil = Session["doctorEmail"].ToString();
                    LoadConsultList(docEamil);
                } 
            }                       
        }
        private void LoadConsultList(string docEamil)
        {
            DataTable dt = _cpManager.GetAllConsultList(docEamil);
            gvConsultingList.DataSource = dt;
            gvConsultingList.DataBind();
        }
        protected void gvConsultingList_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvConsultingList.PageIndex = e.NewPageIndex;
            gvConsultingList.DataBind();
        }
        protected void btnAllView_Click(object sender, EventArgs e)
        {
            LoadConsultList(docEamil);
        }

        protected void gvConsultingList_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ViewPd")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                Label questons = (Label)gvConsultingList.Rows[index].FindControl("lblPatientId");
                if (questons != null)
                {
                    lblTest.Text = questons.Text;
                }
            }
        }

       
       
    }
}