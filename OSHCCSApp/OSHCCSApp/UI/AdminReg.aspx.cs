using OSHCCSApp.BLL;
using OSHCCSApp.Model;
using System;
using System.IO;

namespace OSHCCSApp.UI
{
    public partial class AdminReg : System.Web.UI.Page
    {
        AdminManager aMnager = new AdminManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            try
            {            
              
                Admin aAdmin = new Admin();
                aAdmin.UserId = txtAdminId.Text.Trim();
                aAdmin.FullName = txtAddName.Text.Trim();
                aAdmin.AdPassword = txtAdminPassword.Text.Trim();
                aAdmin.Email = txtAdminEmail.Text.Trim();
                aAdmin.Phone = txtAdminPhone.Text.Trim();                
                
                var basePath = Server.MapPath("~/Images");
                var rowCount = aMnager.GetCountTotal();
                var fileName = string.Format("{0:00000000}_{1}", rowCount, FileUploadPhoto.FileName);
                var filePath = System.IO.Path.Combine(basePath, fileName);

                aAdmin.Photo = Path.Combine("/Images", fileName);

                int countRows = aMnager.Save(aAdmin);
                if (countRows > 0)
                {
                    lblAlertMs.Text = "Saved Successfully.";
                    return;
                }
                else {
                    lblAlertMs.Text = "Not Saved.";
                }

                var selectedPhoto = FileUploadPhoto;
                selectedPhoto.SaveAs(filePath);

                //lblMessage.Text = message;
            }
            catch (Exception)
            {
                throw;
            }

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtAdminId.Text ="";
            txtAddName.Text = "";
            txtAdminPassword.Text = "";
            txtAdminEmail.Text = "";
            txtAdminPhone.Text = "";
           // FileUploadPhoto= "";

        }
    }
}