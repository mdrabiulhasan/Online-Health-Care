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
    public partial class OnlineConsult : System.Web.UI.Page
    {
        DoctorManager dManager = new DoctorManager();
        DoctorProcessManager _dpManager = new DoctorProcessManager();
        string onEmail;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadConsultantInfo();
                LoadCategory();
               
            }
            
        }


        private void LoadConsultantInfo()
        {
            DataTable dt = _dpManager.GetConsultantInfo();
            dlOnlineConsultInfo.DataSource = dt;
            dlOnlineConsultInfo.DataBind();
        }
        public void LoadCategory()
        {
            DataTable tbl = dManager.GetCategory();
            ddlDocCategory.DataSource = tbl;
            ddlDocCategory.DataTextField = "category";
            ddlDocCategory.DataValueField = "id";
            ddlDocCategory.DataBind();
            ddlDocCategory.Items.Insert(0, new ListItem("Search By Specialist", ""));
        }

        protected void ddlDocCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            string docCategory = ddlDocCategory.SelectedValue;
            if (docCategory != null)
            {
                DataTable dt = _dpManager.GetConsultantByCategory(docCategory);
                dlOnlineConsultInfo.DataSource = dt;
                dlOnlineConsultInfo.DataBind();
                return;
            }
        }

        protected void dlOnlineConsultInfo_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if(e.CommandName=="OTC")
            {
                Session["TextEmail"] = e.CommandArgument.ToString();
                Response.Redirect("OnlineConsultForm.aspx");
                Session.Remove("PhoneEmail");
                Session.Remove("VideoEmail");
            }
            if(e.CommandName=="OPC")
            {
                Session["PhoneEmail"]=e.CommandArgument.ToString();
                Response.Redirect("OnlineConsultForm.aspx");
                Session.Remove("TextEmail");
                Session.Remove("VideoEmail");
            }
            if(e.CommandName=="OVC")
            {
                Session["VideoEmail"] = e.CommandArgument.ToString();
                Response.Redirect("OnlineConsultForm.aspx");
                Session.Remove("PhoneEmail");
                Session.Remove("TextEmail");
            }
        }


    }
}