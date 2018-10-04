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
    public partial class DoctorProcess3 : System.Web.UI.Page
    {
        DoctorProcessManager _dpManager = new DoctorProcessManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnProcess3_Click(object sender, EventArgs e)
        {
            DoctorsProcess3 dp3 = new DoctorsProcess3();
            if (Session["DoctorEmail"] != null)
            {
                dp3.DoctorEmail = Session["DoctorEmail"].ToString();
                dp3.Days = ddlDay.SelectedItem.Value;
                dp3.HospitalName = txtHospital.Text;
                dp3.ChamberName = txtChamber.Text;
                dp3.District = txtDistrict.Text.Trim();
                dp3.SubDistrict = txtSubDistrict.Text.Trim();
                dp3.StartTime = ddlStartTime.SelectedItem.Value;
                dp3.EndTime = ddlEndTime.SelectedItem.Value;
                dp3.NewVisit = txtNewPatientVisit.Text;
                dp3.OldVisit = txtOldPatientVisit.Text;
                int rowCount=_dpManager.SaveProcess3(dp3);
                if(rowCount>0)
                {
                    Response.Redirect("DoctorProcess4.aspx");
                }
            }
        }
    }
}