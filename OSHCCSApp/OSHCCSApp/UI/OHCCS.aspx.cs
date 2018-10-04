using OSHCCSApp.BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace OSHCCSApp.UI
{
    public partial class slider : System.Web.UI.Page
    {
        DoctorManager dManager=new DoctorManager();
        SearchDoctorManager SdManager = new SearchDoctorManager();
        QuestionManager _qManager = new QuestionManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadCategory();
                LoadAboutOrg();
               // LoadOrgPhoto();
                LoadQuestionAns();
                LoadTotalAnswerdQ();
                
            }
        }
       
        private void LoadTotalAnswerdQ()
        {
            DataTable dt = _qManager.GetTotalAnswerdId();
            if (dt.Rows.Count > 0)
            {
                lblAnsQ.Text = dt.Rows[0]["TotalAnswerdId"].ToString();
            }
            else {
                lblAnsQ.Text = string.Empty;
            }
        }

        public void LoadQuestionAns()
        {
            DataTable dt = _qManager.GetQuestionWithAns();
            dlLoadQuestion.DataSource = dt;
            dlLoadQuestion.DataBind();
        }
        public void LoadCategory()
        {
            DataTable dt = dManager.GetCategory();
            ddlCategory.DataSource = dt;
            ddlCategory.DataTextField = "category";
            ddlCategory.DataValueField = "id";
            ddlCategory.DataBind();
            ddlCategory.Items.Insert(0, new ListItem("Select Doctor Specialist",""));
        
        }

        public void LoadAboutOrg()
        {
            //DataTable dt = dManager.GetAboutOrg();
            //DataListaboutOrganization.DataSource = dt;
            //DataListaboutOrganization.DataBind();
        }

        //public void LoadOrgPhoto()
        //{
        //    DataTable dt = dManager.GetOrgPhoto();
        //    DataListOrgPhoto.DataSource = dt;
        //    DataListOrgPhoto.DataBind();
        //}

        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            string category = ddlCategory.SelectedValue;
            if (category != null)
            {
                //DataTable select = SdManager.SelectCategory(category);
                Session["category"] = category;

                Response.Redirect("DoctorsBookPage.aspx");
                
            }
        }

        protected void dlLoadQuestion_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if(e.CommandName=="P")
            {
                Session["dEmail"] = e.CommandArgument.ToString();
                Response.Redirect("ViewDocProfile.aspx");
            }
            if(e.CommandName=="RM")
            {
                Session["rmEmail"]=e.CommandArgument.ToString();
                Response.Redirect("ReadMore.aspx");
            }
        }
    }
}