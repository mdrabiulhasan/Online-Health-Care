using OSHCCSApp.BLL;
using OSHCCSApp.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OSHCCSApp.UI
{
    public partial class AboutOrganaization : System.Web.UI.Page
    {
        ServiceManager sManager = new ServiceManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadChairmanInfo();
                LoadDirectorInfo();
            }

        }
        protected void saveButton_Click(object sender, EventArgs e)
        {
            aboutChairman chairmen = new aboutChairman();
            chairmen.ChairmanName = txtChairmanName.Text;
            chairmen.ChairmanDesignation = txtChairmandesignation.Text;
            chairmen.ChairmanEmail = txtEmail.Text;

            var basePath = Server.MapPath("~/Images");
            var rowCount = sManager.GetCountTotal();
            var fileName = string.Format("{0:00000000}_{1}", rowCount, chairmanPhoto.FileName);
            var filePath = System.IO.Path.Combine(basePath, fileName);
            chairmen.ChairmanPhoto = Path.Combine("/Images", fileName);

            int countRows = sManager.SaveChairman(chairmen);
            if (countRows > 0)
            {
                successPanel.Visible = true;
                successPanel1.Visible = false;
                alertText.InnerHtml = "Saved Sucessfully.";
            }

            var selectedPhoto = chairmanPhoto;
            selectedPhoto.SaveAs(filePath);

        }
        protected void btnSaveService_Click(object sender, EventArgs e)
        {
            AboutDirector director = new AboutDirector();
            director.DirectorName = txtDirector.Text;
            director.DirectorDesignation = txtDirectorDesignation.Text;
            director.DirectorEmail = txtDirectorEmail.Text;
            var basePath = Server.MapPath("~/Images");

            var rowCount = sManager.GetDirectorCountTotal();
            var fileName = string.Format("{0:00000000}_{1}", rowCount, directorPhoto.FileName);
            var filePath = System.IO.Path.Combine(basePath, fileName);
            director.DirectorPhoto =Path.Combine("/Images", fileName);

            int countRows = sManager.SaveDirector(director);
            if (countRows>0)
            {
                successPanel1.Visible = true;
                successPanel.Visible = false;
                alertText1.InnerHtml = "Saved Successfully";
             
            }

            var selectedPhoto = directorPhoto;
            selectedPhoto.SaveAs(filePath);
            

        }
        public void LoadChairmanInfo()
        {
            DataTable dt = sManager.GetChairmanInfo();
            GridViewChairman.DataSource = dt;
            GridViewChairman.DataBind();

        }

        public void LoadDirectorInfo()
        {
            DataTable dt = sManager.GetDirectorInfo();
            GridViewDirector.DataSource = dt;
            GridViewDirector.DataBind();

        }     

        protected void btnAllView_Click(object sender, EventArgs e)
        {

            successPanel1.Visible = false;
            successPanel.Visible = false;
            LoadDirectorInfo();

        }

        protected void btnChairAllView_Click(object sender, EventArgs e)
        {
            successPanel1.Visible = false;
            successPanel.Visible = false;
            LoadChairmanInfo();
        }
        protected void btnClear_Click(object sender, EventArgs e)
        {

        }

        protected void GridViewChairman_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label lbleDelete = (Label)GridViewChairman.Rows[e.RowIndex].FindControl("lblName");
            DataTable dt = sManager.DeleteChairmanInfo(lbleDelete);
            GridViewChairman.DataSource = dt;
            GridViewChairman.DataBind();

        }

        protected void GridViewDirector_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label lbleDelete = (Label)GridViewDirector.Rows[e.RowIndex].FindControl("lblNames");
            DataTable dt = sManager.DeleteDirector(lbleDelete);
            GridViewDirector.DataSource = dt;
            GridViewDirector.DataBind();
        }

       

       
        
    }
}