using OSHCCSApp.BLL;
using OSHCCSApp.Model;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace OSHCCSApp.UI
{
    public partial class DoctorRegistration : System.Web.UI.Page
    {
        DoctorManager dManager = new DoctorManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetCategory();
            }
        }
        protected void saveButton_Click1(object sender, EventArgs e)
        {
            try
            {
                //if (string.IsNullOrEmpty(txtDoctorUserName.Text) || string.IsNullOrEmpty(txtDoctorFullName.Text) || string.IsNullOrEmpty(txtDoctorDateBirth.Value) || string.IsNullOrEmpty(txtDesignation.Text) || string.IsNullOrEmpty(txtAbout.Text) || string.IsNullOrEmpty(txtHospital.Text) || string.IsNullOrEmpty(txtCountry.Text) || string.IsNullOrEmpty(txtDistrict.Text) || string.IsNullOrEmpty(txtCity.Text) || string.IsNullOrEmpty(txtPassword.Text) || string.IsNullOrEmpty(txtEmailAddress.Text) || string.IsNullOrEmpty(txtPhone.Text))
                //{
                //    lblMessage.Text=""
                //}
                Doctors dpDoctors = new Doctors();
                dpDoctors.DoctorUserId = txtDoctorUserName.Text;
                dpDoctors.Fullname = txtDoctorFullName.Text.Trim();
                dpDoctors.DateOFBirth = txtDoctorDateBirth.Value.Trim();
                dpDoctors.NId = txtNid.Text;
                dpDoctors.Category = ddlDoctorCategory.SelectedValue.Trim();
                dpDoctors.Designation = txtDesignation.Text.Trim();
                dpDoctors.About = txtAbout.Text;
                dpDoctors.Hospital = txtHospital.Text;
                dpDoctors.Chember = txtChamber.Text;
                dpDoctors.Country = txtCountry.Text;
                dpDoctors.District = txtDistrict.Text;
                dpDoctors.CityOrVillage = txtCity.Text;
                dpDoctors.Password = txtPassword.Text.Trim();
                dpDoctors.Email = txtEmailAddress.Text;
                dpDoctors.PhoneNo = txtPhone.Text.Trim();

                var basePath = Server.MapPath("~/Images");
                var rowCount = dManager.GetCountTotal();
                var fileName = string.Format("{0:00000000}_{1}", rowCount, doctorPhotoUpload.FileName);
                var filePath = System.IO.Path.Combine(basePath, fileName);
                dpDoctors.Photo = Path.Combine("/Images", fileName);

                var selectedPhoto = doctorPhotoUpload;
                selectedPhoto.SaveAs(filePath);

                int countRows = dManager.Save(dpDoctors);
                if (countRows>0)
                {
                    lblMessage.Text = "Saved Successfully.";
                    return;
                }
                //else 
                //{
                //    lblMessage.Text = "Faield.Please Try again!";
                //}
                
            }
            catch (Exception)
            {
                
                throw;
            }
            
        }

        public void GetCategory()
        {
            DataTable tbl = dManager.GetCategory();
            ddlDoctorCategory.DataSource = tbl;
            ddlDoctorCategory.DataTextField = "category";
            ddlDoctorCategory.DataValueField = "id";
            ddlDoctorCategory.DataBind();
            ddlDoctorCategory.Items.Insert(0, new ListItem("Select One", ""));
        }
        protected void resetBtn_Click(object sender, EventArgs e)
        {
            txtDoctorUserName.Text = " ";
            txtDoctorFullName.Text = " ";
            txtDoctorDateBirth.Value = " ";
            
            txtDesignation.Text = "";
            txtAbout.Text="";
            txtHospital.Text="";
            txtCountry.Text="";
            txtDistrict.Text="";
            txtCity.Text="";
            txtPassword.Text="";
            txtEmailAddress.Text="";
            txtPhone.Text="";
            GetCategory();
            
        }


    }
}