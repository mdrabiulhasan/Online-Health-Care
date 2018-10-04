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
    public partial class DoctorProcess4 : System.Web.UI.Page
    {
        DoctorProcessManager _dpManager = new DoctorProcessManager();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //Clear();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            DoctorsProcess4 dp4 = new DoctorsProcess4();
            if (Session["DoctorEmail"] != null)
            {
                dp4.DoctorEmail = Session["DoctorEmail"].ToString();
                dp4.Days = ddlDay.Text;
                if(CheckBox1.Checked)
                {
                    dp4.TConsult = "Text Consult";
                    dp4.TPrice = Convert.ToInt32(txtTamount.Text);
                    dp4.TStartTime = ddTstartTime.SelectedItem.Value;
                    dp4.TEndTime = ddTEndTime.SelectedItem.Value; 
                }
                if (CheckBox2.Checked)
                {
                    dp4.PConsult = "Phone Consult";
                    dp4.PPrice = Convert.ToInt32(txtPAmount.Text);
                    dp4.PStartTime = ddPstartTime.SelectedItem.Value;
                    dp4.PEndTime = ddPendTime.SelectedItem.Value;
                }
                if(CheckBox3.Checked)
                {
                    dp4.VConsult = "Video Consult";
                    dp4.VPrice = Convert.ToInt32(txtVAmount.Text);
                    dp4.VStartTime = ddVstartTime.SelectedItem.Value;
                    dp4.VEndTime = ddVendTime.SelectedItem.Value;
                }
                
                int rowCount = _dpManager.SaveProcess4(dp4);
                if (rowCount > 0)
                {
                    successPanel.Visible = true;
                    warningPanel.Visible = false;
                    alertText.InnerHtml = "Saved Successfully";
                }
                else
                {
                    warningPanel.Visible = true;
                    successPanel.Visible = false;
                    errorName.InnerHtml="Warning";
                    errorText.InnerHtml = "Failed.Please Try Again!";
                   
                }
            }
        }

        public void Clear()
        {
            ddlDay.SelectedItem.Value = "";
            ddTstartTime.SelectedItem.Value = "";
            ddTEndTime.SelectedItem.Value = "";
            ddPstartTime.SelectedItem.Value = "";
            ddTEndTime.SelectedItem.Value = "";
            ddVstartTime.SelectedItem.Value = "";
            ddVendTime.SelectedItem.Value = "";
            txtPAmount.Text = "";
            txtTamount.Text = "";
            txtVAmount.Text = "";
           
        }
    }
}