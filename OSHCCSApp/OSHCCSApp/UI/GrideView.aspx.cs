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
    public partial class GrideView : System.Web.UI.Page
    {
        DoctorManager dManager = new DoctorManager();
        DataTable table = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                
            }
            LoadDoctorInfo();
        }

        public void LoadDoctorInfo()
        {
            DataTable table = dManager.GetDoctorInfo();
            GrideViewDoctorInfo.DataSource = table;
            GrideViewDoctorInfo.DataBind();

        }

        protected void DoctorGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GrideViewDoctorInfo.PageIndex = e.NewPageIndex;
            //GrideViewDoctorInfo.DataSource = table;
            GrideViewDoctorInfo.DataBind();
        }

        protected void GrideViewDoctorInfo_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Y")
            { 
                int index = Convert.ToInt32(e.CommandArgument);
                Label lblPublished = (Label)GrideViewDoctorInfo.Rows[index].FindControl("lbldocId");
                DataTable dt = dManager.PublishedDoctorInfo(lblPublished);
                GrideViewDoctorInfo.DataSource = table;
                GrideViewDoctorInfo.DataBind();
                
            }
            if (e.CommandName == "N")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                Label lblUnPublished = (Label)GrideViewDoctorInfo.Rows[index].FindControl("lbldocId");
                DataTable dt = dManager.UnPublishedDoctorInfo(lblUnPublished);
                GrideViewDoctorInfo.DataSource = table;
                GrideViewDoctorInfo.DataBind();


            }
        }


        protected void GrideViewDoctorInfo_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label lblDelete = (Label)GrideViewDoctorInfo.Rows[e.RowIndex].FindControl("lbldocId");
            DataTable dt = dManager.DeletedDoctorInfo(lblDelete);
            GrideViewDoctorInfo.DataSource = dt;
            GrideViewDoctorInfo.DataBind();
        }


        protected void GrideViewDoctorInfo_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    ((LinkButton)e.Row.Cells[11].FindControl("btnYes")).CommandArgument = e.Row.RowIndex.ToString();
                    ((LinkButton)e.Row.Cells[11].FindControl("btnNo")).CommandArgument = e.Row.RowIndex.ToString();
                }
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            LoadDoctorInfo();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string docUserId = txtDocUserName.Text.Trim();
            if (docUserId != null)
            {
                DataTable dt = dManager.GetDoctorInfoById(docUserId);
                GrideViewDoctorInfo.DataSource = dt;
                GrideViewDoctorInfo.DataBind();
            }
        }
    }
}