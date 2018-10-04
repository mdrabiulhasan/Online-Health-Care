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
    public partial class BookLabTests : System.Web.UI.Page
    {
        LabTestInfoManager _ltManager = new LabTestInfoManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadAllTest();
                LoadLabtestInfo();
            }
        }

        private void LoadAllTest()
        {
            DataTable dt = _ltManager.GetAllTests();
            ddlTestName.DataSource = dt;
            ddlTestName.DataTextField = "test_name";
            ddlTestName.DataValueField = "id";
            ddlTestName.DataBind();
            ddlTestName.Items.Insert(0, new ListItem("Search By Test Name", ""));
        }

        private void LoadLabtestInfo()
        {
            DataTable dt = _ltManager.GetLabTestInfo();
            dlLabInfo.DataSource = dt;
            dlLabInfo.DataBind();
        }

        protected void dlLabInfo_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "LT")
            {
                Session["LabName"] = e.CommandArgument.ToString();
                Response.Redirect("LabDetails.aspx");
            }
        }

        string searchDistrict;
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            searchDistrict = txtDistrict.Text.Trim();
            if (!string.IsNullOrEmpty(searchDistrict))
            {
                DataTable dt = _ltManager.GetAllByDistrict(searchDistrict);
                if (dt.Rows.Count>0)
                {
                    dlLabInfo.DataSource = dt;
                    dlLabInfo.DataBind();
                }
                else
                {

                    Response.Write("<script>alert('Search District Wrong Spelling')</script>");
                }

            }
            else
            {

                Response.Write("<script>alert('Search Field Is Empty.Please Insert!')</script>");
            }
        }
    }
}