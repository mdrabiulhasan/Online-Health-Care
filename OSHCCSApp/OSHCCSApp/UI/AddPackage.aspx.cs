using OSHCCSApp.BLL;
using OSHCCSApp.DAL;
using OSHCCSApp.Model;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OSHCCSApp.UI
{
    public partial class AddPackage : System.Web.UI.Page
    {
        CustomerPackageManager _cpManager = new CustomerPackageManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddPackage_Click(object sender, EventArgs e)
        {
            Package packages = new Package();
            if(!string.IsNullOrEmpty(txtPackageName.Text) || !string.IsNullOrEmpty(txtDescription.Text) || !string.IsNullOrEmpty(txtPrice.Text))
            {
                packages.PackageName = txtPackageName.Text;
                packages.PackageDescription = txtDescription.Text;
                packages.PackagePrice = txtPrice.Text;

                var basePath = Server.MapPath("~/Images");
                var rowCount = _cpManager.GetCountTotal();
                var fileName = string.Format("{0:00000000}_{1}", rowCount, packagePhoto.FileName);
                var filePath = System.IO.Path.Combine(basePath, fileName);
                packages.Photo = Path.Combine("/Images", fileName);

                var selectedPhoto = packagePhoto;
                selectedPhoto.SaveAs(filePath);

                int countRow = _cpManager.Insert(packages);
                if (countRow > 0)
                {
                    lblMessage.Text = "Saved Successfully.";
                    return;
                }
            }
            else
            {
                lblMessage.Text="Field can not be empty";
            }
        }
    }
}