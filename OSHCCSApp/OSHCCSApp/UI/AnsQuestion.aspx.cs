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
    public partial class AnsQuestion : System.Web.UI.Page
    {
        QuestionManager _qManager = new QuestionManager();
        string doctorEmail;
        string qId;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                LoadUserQuestion();
                if (Session["doctorEmail"] != null)
                {
                    doctorEmail = Session["doctorEmail"].ToString();
                }
            }
        }

        public void LoadUserQuestion()
        {
            DataTable dt = _qManager.GetQuestion();
            gvAnsQuestion.DataSource = dt;
            gvAnsQuestion.DataBind();
        }

        protected void gvAnsQuestion_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Y")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                Label questons = (Label)gvAnsQuestion.Rows[index].FindControl("lblid");
                //Session["id"] = questons;
                if (questons != null)
                {
                    //lblqId.Text= questons.Text;
                    Session["id"] = questons.Text;
                    if (Session["id"] != null)
                    {
                        txtQuestionId.Text = Session["id"].ToString();
                    }
                    DataTable dt = _qManager.GetUserEmail(questons);
                    DataList1.DataSource = dt;
                    DataList1.DataBind();
                }
            }
        }

        protected void gvAnsQuestion_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                ((Button)e.Row.Cells[6].FindControl("btnFeedBack")).CommandArgument = e.Row.RowIndex.ToString();

            }
        }

        protected void btnAnswer_Click(object sender, EventArgs e)
        {
            AnswerQuestion aQuestion = new AnswerQuestion();
            if (Session["doctorEmail"] != null) //&& Session["id"] != null)
            {
                //aQuestion.QuestionId = Session["id"].ToString();
                aQuestion.QuestionId = Convert.ToInt32(txtQuestionId.Text);
                aQuestion.DoctorEmail = Session["doctorEmail"].ToString();

                var basePath = Server.MapPath("~/Images");
                var rowFile = _qManager.CountAnsImageRow();
                var fileName = string.Format("{0:00000000}_{1}", rowFile, AnsphotoUpload.FileName);
                var filePath = System.IO.Path.Combine(basePath, fileName);
                aQuestion.AnsPhoto = Path.Combine("/Images", fileName);
                var selectedPhoto = AnsphotoUpload;
                selectedPhoto.SaveAs(filePath);
                aQuestion.AnswerDetails = txtAnswer.Value;

                int rowcount = _qManager.SaveAnswer(aQuestion);
                if (rowcount > 0)
                {
                    lblmsg.Text = "Answered.";
                    
                    return;
                }
            }
        }
    }
}