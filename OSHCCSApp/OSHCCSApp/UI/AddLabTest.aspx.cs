using OSHCCSApp.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using OSHCCSApp.Model;

namespace OSHCCSApp.UI
{
    public partial class AddLabTest : System.Web.UI.Page
    {
        LabTestInfoManager _ltManager = new LabTestInfoManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadLabName();
                LoadLabTestName();
            }


        }

        private void LoadLabName()
        {
            DataTable dt = _ltManager.GetLab();
            ddLab.DataSource = dt;
            ddLab.DataTextField = "lab_name";
            ddLab.DataValueField = "id";
            ddLab.DataBind();
            ddLab.Items.Insert(0, new ListItem("Select Lab Name", ""));
        }

        private void LoadLabTestName()
        {
            DataTable dt = _ltManager.GetAllTests();
            ddTestId.DataSource = dt;
            ddTestId.DataTextField = "test_name";
            ddTestId.DataValueField = "id";
            ddTestId.DataBind();
            ddTestId.Items.Insert(0, new ListItem("Select Test Name", ""));
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            LabTests tTests = new LabTests();
            if (!string.IsNullOrEmpty(txtLabName.Text) || !string.IsNullOrEmpty(txtTestName.Text) || !string.IsNullOrEmpty(txtDistrict.Text) || !string.IsNullOrEmpty(txtLocation.Text))
            {
                tTests.Lab_name = txtLabName.Text;
                tTests.Test_name = txtTestName.Text;
                tTests.District_or_city = txtDistrict.Text;
                tTests.Address_or_location = txtLocation.Text;
                tTests.About = txtAbout.Text;

                int rowCount = _ltManager.Save(tTests);
                if (rowCount > 0)
                {
                    warningPanel.Visible = false;
                    successPanel.Visible = true;
                    alertText.InnerHtml = "Saved Successfully";

                }

            }
            else
            {
                successPanel.Visible = false;
                warningPanel.Visible = true;
                errorName.InnerHtml = "Warning";
                errorText.InnerHtml = "Field Canot Be empty";
            }

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }

        public void Clear()
        {
            txtLabName.Text = "";
            txtTestName.Text = "";
            txtDistrict.Text = "";
            txtLocation.Text = "";
            txtAbout.Text = "";
            warningPanel.Visible = false;
            successPanel.Visible = false;

        }

        protected void btnSaveSubTest_Click(object sender, EventArgs e)
        {
            SubTests sTests = new SubTests();
            if(!string.IsNullOrEmpty(ddTestId.SelectedValue) || !string.IsNullOrEmpty(txtSubtest.Text) || !string.IsNullOrEmpty(txtPrice.Text))
            {
                sTests.test_id = Convert.ToInt32(ddTestId.SelectedValue);
                sTests.Sub_test_name = txtSubtest.Text;
                sTests.test_price = Convert.ToInt32(txtPrice.Text);
                int rowCount = _ltManager.Save(sTests);
                if (rowCount > 0)
                {
                    warningPanel.Visible = false;
                    successPanel.Visible = true;
                    alertText.InnerHtml = "Saved Successfully";

                }
                else
                {
                    successPanel.Visible = false;
                    warningPanel.Visible = true;
                    errorName.InnerHtml = "Warning";
                    errorText.InnerHtml = "Field Canot Be empty";
                }

            }

        }

        //protected void ddLab_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    string lName = ddLab.SelectedItem.Value;
        //    if (lName != null)
        //    {
        //        DataTable dt = _ltManager.GetLabTest(lName);
        //        ddTestId.DataSource = dt;
        //        ddTestId.DataTextField = "test_name";
        //        ddTestId.DataValueField = "id";
        //        ddTestId.DataBind();
        //        ddTestId.Items.Insert(0, new ListItem("Select Test Name", ""));
        //    }
        //}
    }
}