using OSHCCSApp.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace OSHCCSApp.UI
{
    public partial class DoctorsProfile : System.Web.UI.Page
    {
        DoctorManager dManager = new DoctorManager();
        DoctorProcessManager _dpManager = new DoctorProcessManager();
        string docEamil;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["doctorEmail"] != null)
            {
                docEamil = Session["doctorEmail"].ToString();
                LoadNewQuestion();

            }

            GetDoctorProfileInfo(docEamil);
            LoadDoctorHopitalDetails(docEamil);
            LoadDocConsultDetails(docEamil);
        }

        private void LoadNewQuestion()
        {
            DataTable dt = _dpManager.GetNewQuestion();
            if (dt.Rows.Count > 0)
            {
                lblNewQuestion.Text = dt.Rows[0]["TotalNewQuestion"].ToString();
            }
            else
            {
                lblNewQuestion.Text = string.Empty;
            }
        }
        public void GetDoctorProfileInfo(string docEamil)
        {
            DataTable dt = _dpManager.GetDoctorProfileInfo(docEamil);
            DataListDoctorLog.DataSource = dt;
            DataListDoctorLog.DataBind();

        }
        private void LoadDoctorHopitalDetails(string docEamil)
        {
            DataTable dt = _dpManager.GetDoctorHopitalDetails(docEamil);
            DataList2.DataSource = dt;
            DataList2.DataBind();
        }
        public void LoadDocConsultDetails(string docEamil)
        {
            DataTable dt = _dpManager.GetDocConsultDetails(docEamil);
            dlDocconsultInfo.DataSource = dt;
            dlDocconsultInfo.DataBind();
        }
    }
}