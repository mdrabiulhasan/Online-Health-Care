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
    public partial class AddCategory : System.Web.UI.Page
    {
        ServiceManager sManager = new ServiceManager();
        DoctorManager dManager = new DoctorManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCategory();
                LoadAboutOrg();
            }
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            Service serviceCategory = new Service();
            serviceCategory.Category = txtDoctorCategory.Text.Trim();
            serviceCategory.HospitalName = txtHospitalname.Text.Trim();

            int CountRows = sManager.Save(serviceCategory);
            if (CountRows > 0)
            {
                successPanel.Visible = true;
                alertText.InnerHtml = "Saved Successfully.";
            }
            else
            {
                successPanel.Visible = false;
                warningPanel.Visible = true;
                errorText.InnerHtml = "Data Is Not Saved";
            }
            LoadCategory();
        }
        protected void btnSaveService_Click(object sender, EventArgs e)
        {
            Service serviceOrg = new Service();
            serviceOrg.AboutOrganization = txtMessage.Value;

            var basePath = Server.MapPath("~/Images");
            var rowCount = sManager.GetCountOrgTotal();
            var fileName = string.Format("{0:00000000}_{1}", rowCount, servicePhotoUpload.FileName);
            var filePath = System.IO.Path.Combine(basePath, fileName);
            serviceOrg.OrgPhoto = Path.Combine("/Images", fileName);

            var selectedPhoto = servicePhotoUpload;
            selectedPhoto.SaveAs(filePath);

            int CountRows = sManager.SaveServiceOrg(serviceOrg);
            if (CountRows > 0)
            {
                successPanel1.Visible = true;
                alertText1.InnerHtml = "Saved Successfully.";
            }
            else
            {
                successPanel1.Visible = false;
                warningPanel1.Visible = true;
                errorText1.InnerHtml = "Data Is Not Saved";
            }
            LoadAboutOrg();
        }

        private void LoadAboutOrg()
        {
            DataTable dt = dManager.GetAboutOrg();
            aboutOrgGridView.DataSource = dt;
            aboutOrgGridView.DataBind();
        }

        public void LoadCategory()
        {
            DataTable dt = sManager.GetAllCategory();
            categoryGrideView.DataSource = dt;
            categoryGrideView.DataBind();
        }

        protected void categoryGrideView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label lblDlete = (Label)categoryGrideView.Rows[e.RowIndex].FindControl("lblcategory");
            DataTable dt = dManager.DeleteCategory(lblDlete);
            categoryGrideView.DataSource = dt;
            categoryGrideView.DataBind();
        }

        protected void aboutOrgGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label lblDlete = (Label)aboutOrgGridView.Rows[e.RowIndex].FindControl("lblOrgId");
            DataTable dt = dManager.DeleteAboutOrg(lblDlete);
            aboutOrgGridView.DataSource = dt;
            aboutOrgGridView.DataBind();

        }

        protected void btnAllView_Click(object sender, EventArgs e)
        {
            LoadAboutOrg();
        }

        protected void btnCategoryView_Click(object sender, EventArgs e)
        {
            LoadCategory();
        }



    }
}