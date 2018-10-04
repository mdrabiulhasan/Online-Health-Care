using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using OSHCCSApp.BLL;

namespace OSHCCSApp.UI
{
    public partial class UpdateDoctorProfile : System.Web.UI.Page
    {
        DoctorProcessManager _dpManager=new DoctorProcessManager();
        string docEmail;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["doctorEmail"]!=null)
            {
                docEmail = Session["doctorEmail"].ToString();
                loadDoctorForUpdate(docEmail);
            }

        }

        public void loadDoctorForUpdate(string docEmail)
        {
            DataTable dt=_dpManager.GetDoctorInfoForUpdate(docEmail);
            if(dt.Rows.Count>0)
            {
                ddlDoctorCategory.SelectedValue=dt.Rows[0]["category"].ToString();
                txtDesignation.Text=dt.Rows[0]["designation"].ToString();
                txtAbout.Text=dt.Rows[0]["about"].ToString();
                txtCountry.Text=dt.Rows[0]["country"].ToString();
                txtDistrict.Text=dt.Rows[0]["district"].ToString();
                txtCityVillage.Text=dt.Rows[0]["cityOrVillage"].ToString();
            }
        }
    }
}