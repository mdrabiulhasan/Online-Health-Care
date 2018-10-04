using OSHCCSApp.BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OSHCCSApp.UI
{
    public partial class ListAppointment : System.Web.UI.Page
    {
        AppointmentManager _aManager = new AppointmentManager();
        string dEamil;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
             
            }
            if (Session["doctorEmail"] != null)
            {
                dEamil = Session["doctorEmail"].ToString();
                LoadAllAppointment(dEamil);
            }
           
        }
        private void LoadAllAppointment(string dEamil)
        {
            DataTable dt = _aManager.GetAllAppointment(dEamil);
            gvAppointmentList.DataSource = dt;
            gvAppointmentList.DataBind();
        }

        protected void gvAppointmentList_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvAppointmentList.PageIndex = e.NewPageIndex;
            gvAppointmentList.DataBind();

        }

       
    }
}