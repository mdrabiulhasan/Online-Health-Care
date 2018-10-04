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
    public partial class DoctorProcess2 : System.Web.UI.Page
    {
        DoctorProcessManager _dpManager = new DoctorProcessManager();
        DoctorManager dManager = new DoctorManager();
        string doctorEmail;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["DoctorEmail"] != null)
                {
                    doctorEmail = Session["DoctorEmail"].ToString();
                }
                GetCategory();


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
        protected void btnProcess2_Click(object sender, EventArgs e)
        {
            DoctorsProcess2 dp2 = new DoctorsProcess2();
            if (!string.IsNullOrEmpty(txtDateOfBirth.Text) || !string.IsNullOrEmpty(txtBmdcNo.Text) || !string.IsNullOrEmpty(ddlDoctorCategory.SelectedValue))
            {
                dp2.BirthDate = txtDateOfBirth.Text;
                dp2.NId = txtNid.Text.Trim();
                dp2.Category = ddlDoctorCategory.SelectedValue;
                dp2.Designation = txtDesignation.Text;
                dp2.BmdcNo = txtBmdcNo.Text.Trim();
                dp2.About = txtAbout.Text;
                dp2.Country = txtCountry.Text;
                dp2.District = txtDistrict.Text;
                dp2.CityOrVillage = txtCity.Text;
                dp2.Password = txtPassword.Text.Trim();
                dp2.DoctorEmail = Session["DoctorEmail"].ToString();

                var basePath = Server.MapPath("~/Images");
                var rowFile = _dpManager.CountImageRow();
                var fileName = string.Format("{0:00000000}_{1}", rowFile, doctorPhotoUpload.FileName);
                var filePath = System.IO.Path.Combine(basePath, fileName);
                dp2.Photo = Path.Combine("/Images", fileName);

                var selectedPhoto = doctorPhotoUpload;
                selectedPhoto.SaveAs(filePath);

                int rowCount = _dpManager.SaveProcess2(dp2);
                if (rowCount > 0)
                {
                    Response.Redirect("DoctorProcess3.aspx");
                    return;
                }
            }
            else
            {
                lblMessage.Text = "Field cannot Be Empty.";
            }

        }

        //protected void btntest_Click(object sender, EventArgs e)
        //{
        //    DoctorsProcess2 dp2 = new DoctorsProcess2();
        //    if(doctorPhotoUpload.HasFile)
        //    {
        //        var basePath = Server.MapPath("/Files");
        //        //Response.Write(basePath);
        //        var fileName = doctorPhotoUpload.FileName;
        //        var filePath = System.IO.Path.Combine(basePath, fileName);
        //       // dp2.Photo = Path.Combine("/Files", fileName);

        //        doctorPhotoUpload.SaveAs(filePath);

        //        int length = doctorPhotoUpload.PostedFile.ContentLength;
        //        byte[] imageBytes = new byte[length];
        //        doctorPhotoUpload.PostedFile.InputStream.Read(imageBytes, 0, length);
        //        dp2.Photo = imageBytes;
        //        int rowCount = _dpManager.Insert(dp2);
        //        if(rowCount>0)
        //        {
        //            lblMessage.Text = "Success";
        //            return;
        //        }

        //    }
        //}
    }
}