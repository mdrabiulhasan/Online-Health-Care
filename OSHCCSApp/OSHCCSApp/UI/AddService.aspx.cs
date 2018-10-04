using OSHCCSApp.BLL;
using OSHCCSApp.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OSHCCSApp.UI
{
    public partial class AddService : System.Web.UI.Page
    {
        ServiceManager sManger = new ServiceManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            Service serviceCategory = new Service();
            serviceCategory.Category=txtDoctorCategory.Text;
            serviceCategory.HospitalName=txtHospitalname.Text;

            int countRows=sManger.Save(serviceCategory);
            if(countRows > 0)
            {
                successPanel.Visible=true;
                alertText.InnerHtml="Saved Successfull.";
                 return;
            }
               
        }
    }
}