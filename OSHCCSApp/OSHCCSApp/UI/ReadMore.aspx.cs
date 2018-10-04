using OSHCCSApp.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OSHCCSApp.UI
{
    public partial class ReadMore : System.Web.UI.Page
    {
        QuestionManager _qManager = new QuestionManager();
        string rmEmail;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["rmEmail"]!=null)
            {
                rmEmail = Session["rmEmail"].ToString();
                loadAllAnswer(rmEmail);
            }

        }

        private void loadAllAnswer(string rmEmail)
        {
            DataTable dt = _qManager.ViewFullAnswer(rmEmail);
            dlFullQA.DataSource = dt;
            dlFullQA.DataBind();
        }

        protected void dlFullQA_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if(e.CommandName=="P")
            {
                Session["dEmail"] = e.CommandArgument.ToString();
                Response.Redirect("");
            }
        }

        protected void btnBookAppPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("DoctorsBookPage.aspx");
        }
    }
}