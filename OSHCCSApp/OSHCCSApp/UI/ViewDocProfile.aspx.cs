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
    public partial class ViewDocProfile : System.Web.UI.Page
    {
        DoctorManager dManager = new DoctorManager();
        DoctorProcessManager _dpManager = new DoctorProcessManager();
        string docMail;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["dEmail"] != null)
                {
                    docMail = Session["dEmail"].ToString();
                    if (docMail != null)
                    {
                        LoadDoctorHopitalInfo(docMail);
                        LoadDocConsultInfo(docMail);
                        LoadSpeciality(docMail);
                        LoadStatementdocMail();
                        LoadDoctorBasicInfo(docMail);
                    }
                }
            }
        }

        private void LoadDoctorBasicInfo(string docMail)
        {
            DataTable dt = dManager.GetDoctorbasicInfo(docMail);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        private void LoadStatementdocMail()
        {
            DataTable dt = dManager.GetDoctorbasicInfo(docMail);
            DataList4.DataSource = dt;
            DataList4.DataBind();
        }

      private void LoadDoctorHopitalInfo(string docMail)
        {
            DataTable dt = dManager.GetDoctorHopitalInfo(docMail);
            DataList2.DataSource = dt;
            DataList2.DataBind();
        }
        private void LoadSpeciality(string docMail)
        {
            DataTable dt = dManager.GetDoctorbasicInfo(docMail);
            DataList3.DataSource = dt;
            DataList3.DataBind();
        }

        public void LoadDocConsultInfo(string docMail)
        {
            DataTable dt = _dpManager.GetDocConsultInfo(docMail);
            dlDocconsultInfo.DataSource = dt;
            dlDocconsultInfo.DataBind();
        }

        protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "APP")
            {
                //Response.Redirect("DoctorAppointment.aspx?doctorEmail="+e.CommandArgument.ToString());
               // Session["id"] = e.CommandArgument.ToString();
                Session["docMail"] = e.CommandArgument.ToString();
                Session.Remove("Email");
                Response.Redirect("DoctorAppointment.aspx");
            }
           
        }

        protected void dlDocconsultInfo_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "OTC")
            {
                Session["TextEmail"] = e.CommandArgument.ToString();
                Response.Redirect("OnlineConsultForm.aspx");
            }
            if(e.CommandName=="OPC")
            {
                Session["PhoneEmail"] = e.CommandArgument.ToString();
                Response.Redirect("OnlineConsultForm.aspx");
            }
            if (e.CommandName == "OVC")
            {
                Session["VideoEmail"] = e.CommandArgument.ToString();
                Response.Redirect("OnlineConsultForm.aspx");
            }
           
        }

    }
}