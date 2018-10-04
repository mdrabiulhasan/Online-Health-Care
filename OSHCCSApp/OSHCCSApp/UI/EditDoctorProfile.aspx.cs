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
    public partial class EditDoctorProfile : System.Web.UI.Page
    {
        DoctorManager dManager = new DoctorManager();
        string docUserId;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] != null)
            {
                docUserId = Session["UserId"].ToString();

            }
            LoadCategory();
            LoadDoctorInfo(docUserId);

        }
        public void LoadCategory()
        {
            DataTable tbl = dManager.GetCategory();
            ddlDoctorCategory.DataSource = tbl;
            ddlDoctorCategory.DataTextField = "category";
            ddlDoctorCategory.DataBind();
        }

        public void LoadDoctorInfo(string docUserId)
        {
            DataTable dt = dManager.GetDoctorProfileInfo(docUserId);
            if (dt.Rows.Count > 0)
            {
                txtDoctorFullName.Text = dt.Rows[0]["fullName"].ToString();
                txtDesignation.Text = dt.Rows[0]["designation"].ToString();
                txtAbout.Text = dt.Rows[0]["about"].ToString();
                txtHospital.Text = dt.Rows[0]["hospital"].ToString();
                txtCountry.Text = dt.Rows[0]["country"].ToString();
                txtDistrict.Text = dt.Rows[0]["district"].ToString();
                txtCityVillage.Text = dt.Rows[0]["cityOrVillage"].ToString();
                txtEmailAddress.Text = dt.Rows[0]["email"].ToString();
                txtPhone.Text = dt.Rows[0]["phoneNo"].ToString();
            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Doctors doctor = new Doctors();
            doctor.DoctorUserId = Session["UserId"].ToString();
            doctor.Fullname = txtDoctorFullName.Text;
            doctor.Category = ddlDoctorCategory.SelectedItem.Value;
            doctor.Designation = txtDesignation.Text;            
            doctor.About = txtAbout.Text;
            doctor.Hospital = txtHospital.Text;
            doctor.Country = txtCountry.Text;
            doctor.District = txtDistrict.Text;
            doctor.CityOrVillage = txtCityVillage.Text;
            doctor.Email = txtEmailAddress.Text.Trim();
            doctor.PhoneNo = txtPhone.Text;

            int CountRows = dManager.Update(doctor);
            if(CountRows> 0)
            {
                successPanel.Visible = true;
                alertText.InnerHtml = "Successfully Updated.";
            }
            //else
            //{
            //    warningPanel.Visible=true;
            //    successPanel.Visible=false;
            //    errorText.InnerHtml="Do Not Update.";
            //}
            

        }


    }
}