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
    public partial class DoctorAppointment : System.Web.UI.Page
    {
        DoctorManager dManager = new DoctorManager();
        string doctorEmail, tdate;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Email"] != null)
                {
                    doctorEmail = Session["Email"].ToString();
                    Session.Remove("docMail");
                }
                if (Session["docMail"] != null)
                {
                    doctorEmail = Session["docMail"].ToString();
                    Session.Remove("Email");

                }
                LoadDBasicInfo(doctorEmail);
                LoadDoctorInfoAppointment(doctorEmail);

                LoadAppointmentDateTime();
                LoadDate();
            }


        }
        private void LoadDBasicInfo(string doctorEmail)
        {
            DataTable dt = dManager.GetDBasicInfo(doctorEmail);
            dlBasicInfo.DataSource = dt;
            dlBasicInfo.DataBind();
        }
        private void LoadDoctorInfoAppointment(string doctorEmail)
        {
            DataTable dt = dManager.DoctorInfoAppointment(doctorEmail);
            dlDocAppointments.DataSource = dt;
            dlDocAppointments.DataBind();
        }

        private void LoadDate()
        {
            //DataTable dt = dManager.GetDate();
            //DataList1.DataSource = dt;
            //DataList1.DataBind();
        }

        private void LoadAppointmentDateTime()
        {
            DataTable dt = dManager.GetAppointmentDateTime();
            dlLoadDateTime.DataSource = dt;
            dlLoadDateTime.DataBind();
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            //DateTime.Now.ToString("MMMM,dd,yyyy");

            TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
            // TextBox1.Text = Calendar1.SelectedDate.ToString("MM dd yyyy");
        }

        protected void btnshowTime_Click(object sender, EventArgs e)
        {

            tdate = TextBox1.Text;
            tdate = txtDate.Value;
            if (!string.IsNullOrEmpty(tdate))
            {
                DataTable dt = dManager.GetAppDateTime(tdate);
                dlLoadDateTime.DataSource = dt;
                dlLoadDateTime.DataBind();
            }
            else
            {
                Label1.Text = "Failed";
            }



        }

        protected void dlLoadDateTime_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "tAppointment")
            {
                Session["aTime"] = e.CommandArgument.ToString();
                Response.Redirect("AppointmentForm.aspx");
            }
            else
            {
                Response.Redirect("DoctorAppointment.aspx");
            }
        }


    }
}