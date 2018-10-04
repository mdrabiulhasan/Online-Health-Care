using OSHCCSApp.BLL;
using OSHCCSApp.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OSHCCSApp.UI
{
    public partial class OrderForm : System.Web.UI.Page
    {
        ServiceManager _SManager = new ServiceManager();
        CustomerPackageManager _cpManager = new CustomerPackageManager();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadServiceCategory();
            }
        }
       
       public void LoadServiceCategory()
        {
            DataTable dt = _SManager.GetServiceCategory();
            ddlpackageName.DataSource = dt;
            ddlpackageName.DataTextField = "packageName";
            ddlpackageName.DataValueField = "id";
            ddlpackageName.DataBind();
            ddlpackageName.Items.Insert(0,new ListItem("Slect Service Name", ""));
            
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            customer customers = new customer();
            if (!string.IsNullOrEmpty(txtclientName.Text) || !string.IsNullOrEmpty(txtPhoneNo.Text) || !string.IsNullOrEmpty(txtDivission.Text))
            {
                customers.Fullname = txtclientName.Text;
                customers.PhoneNo = txtPhoneNo.Text.Trim();
                customers.ServiceCategory = ddlpackageName.SelectedValue;
                customers.Divission = txtDivission.Text;
                customers.Distric = txtDistric.Text;
                customers.Thana = txtThana.Text;
                customers.Addresses = txtAddress.Text;
                customers.Email = txtEmail.Text.Trim();
                if (!FUClientPhoto.HasFile)
                {
                    lblMessage.Visible = true;

                    lblMessage.Text = "Please Select Image File";    //checking if file uploader has no file selected

                }
                else
                {
                    int length = FUClientPhoto.PostedFile.ContentLength;
                    byte[] imageBytes = new byte[length];
                    FUClientPhoto.PostedFile.InputStream.Read(imageBytes, 0, length);
                    customers.ClientPhoto =imageBytes;
                }                

                int rowCount = _SManager.Insert(customers);
                if (rowCount > 0)
                {
                    lblMessage.Text = "Your request has been success";
                    return;
                }
            }
            else
            {
                lblMessage.Text = "Field can not be empty.Please try again!";
            }
        }

        public void AllClear()
        {
            txtclientName.Text = "  ";
            txtPhoneNo.Text = "";
            ddlpackageName.SelectedValue = "";
            txtDivission.Text = " ";
            txtDistric.Text = " ";
            txtThana.Text = " ";           
            txtAddress.Text = " ";
            txtEmail.Text = " ";
            lblMessage.Text = " ";
        }

        protected void resetBtn_Click(object sender, EventArgs e)
        {
            AllClear();
        }
    }
}