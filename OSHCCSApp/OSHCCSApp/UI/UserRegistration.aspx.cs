using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OSHCCSApp.BLL;
using OSHCCSApp.Model;

namespace OSHCCSApp.UI
{
    public partial class UserRegistration : System.Web.UI.Page
    {
        UserManager userManager = new UserManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            try
            {
                //if (string.IsNullOrEmpty(txtUserName.Text) || string.IsNullOrEmpty(txtUserFullName.Text) || string.IsNullOrEmpty(txtDateofBirth.Text)|| string.IsNullOrEmpty(txtPassword.Text) || string.IsNullOrEmpty(txtPhoneNo.Text))
                //{
                //    warningPanel.Visible = true;
                //    successPanel.Visible = false;
                //    errorName.InnerHtml = "Warning";
                //    errorText.InnerHtml = "Field can not be empty.";
                //    return;
                //}
                    Users paients = new Users();
                    paients.PatientUserId = txtUserName.Text.Trim();
                    paients.FullName = txtUserFullName.Text.Trim();
                    paients.Birthday = txtDateofBirth.Text;
                    paients.Country = txtCountry.Text.Trim();
                    paients.Password = txtPassword.Text.Trim();
                    paients.Email = txtEmail.Text.Trim();
                    paients.PhoneNo = txtPhoneNo.Text.Trim();

                    int countRows = userManager.Save(paients);
                    if (countRows > 0)
                    {

                        //successPanel.Visible = true;
                        //warningPanel.Visible = false;
                        //alertText.InnerHtml = "Saved Successfully.";
                        lblAlertMs.Text = "Your Registration is Successfull.";
                        return;

                    }
                    else {
                        lblAlertMs.Text = "Faild.Please Try again!";
                    }


            }
            catch (Exception)
            {

                throw;
            }


        }

        public void Clear()
        {
            txtUserName.Text = "";
            txtUserFullName.Text = "";
            txtDateofBirth.Text = "";
            txtCountry.Text = "";
            txtPassword.Text = "";
            txtEmail.Text = "";
            txtPhoneNo.Text = "";

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Clear();
        }
    }
}