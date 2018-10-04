using OSHCCSApp.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OSHCCSApp.UI
{
    public partial class ViewPatient : System.Web.UI.Page
    {
        ConsultPatientManager _cpManager = new ConsultPatientManager();
        string ppId;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Session["id"] != null)
                {
                    ppId = Session["id"].ToString();
                    Label1.Text = ppId;
                }
            }
            
        }
    }
}