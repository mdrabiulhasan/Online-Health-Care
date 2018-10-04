using OSHCCSApp.BLL;
using OSHCCSApp.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OSHCCSApp.UI
{
    public partial class AskQuestion : System.Web.UI.Page
    {
        QuestionManager qManager = new QuestionManager();
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void btnAskQuestion_Click(object sender, EventArgs e)
        {
            Question aQuestion = new Question();
            aQuestion.UserFullName = txtfullName.Text.Trim();
            aQuestion.UserPhoneNo = txtPhone.Text.Trim();
            aQuestion.UserEmail = txtEmail.Text.Trim();
            aQuestion.UserQuestion = messageQuestion.Value;
            int rowCount=qManager.SaveQuestion(aQuestion);
            if (rowCount > 0)
            {
                lblMessage.Text = "Succesfully send your message!";

                return;
            }
            else {
                lblMessage.Text = "Failed.Please try again!";
            }
         
           
            
        }
    }
}