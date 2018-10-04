using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
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
    public partial class pakcagesOrder : System.Web.UI.Page
    {
        CustomerPackageManager _cpManager = new CustomerPackageManager();
        string customerId;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                LoadPackageOrder();


            }

        }

        public void LoadPackageOrder()
        {
            DataTable dt = _cpManager.GetAllPackageOrder();
            GVPackageOrder.DataSource = dt;
            GVPackageOrder.DataBind();
        }

        protected void GVPackageOrder_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Y")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                Label sendMail = (Label)GVPackageOrder.Rows[index].FindControl("lblid");
                DataTable dt = _cpManager.SendEmail(sendMail);
                GVPackageOrder.DataSource = dt;
                GVPackageOrder.DataBind();
                lblMessage.Text = "Mail Successfully Send.";

            }
            else
            {
                lblMessage.Text = "Faield.";

            }
            if (e.CommandName == "D")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                Label details = (Label)GVPackageOrder.Rows[index].FindControl("lblid");
                DataTable dt = _cpManager.ViewDetails(details);
                DataList1.DataSource = dt;
                DataList1.DataBind();
                Session["customerId"] = dt;
                if (Session["customerId"] != null)
                {
                    customerId = Session["customerId"].ToString();
                }

                //Response.Redirect("OrderForm.aspx");
            }
        }

        protected void GVPackageOrder_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {

                    ((Button)e.Row.Cells[8].FindControl("btnSendEmail")).CommandArgument = e.Row.RowIndex.ToString();
                    ((Button)e.Row.Cells[8].FindControl("btnViewDetails")).CommandArgument = e.Row.RowIndex.ToString();

                }
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {

            string cuId = txtId.Text.Trim();
            if (!string.IsNullOrEmpty(cuId))
            {
                int rowCount = _cpManager.OrderConfirm(cuId);
                if (rowCount > 0)
                {
                    Label1.Text = "Customer Confirmation has been Active.";
                    return;
                }
            }

            LoadPackageOrder();
        }

        protected void btnprint_Click(object sender, EventArgs e)
        {
            string cuId = txtId.Text.Trim();
            if (!string.IsNullOrEmpty(cuId))
            {
                DataTable dt = _cpManager.PrintOrder(cuId);

                ReportDocument rd = new ReportDocument();
                //string PhotoPath = new Uri(Server.MapPath("~/Images/" + dt.Rows[0]["Photo"])).AbsoluteUri;
                //rd.SetParameterValue("@Photo", PhotoPath);

                rd.Load(HttpContext.Current.Server.MapPath("~/CeystalReport/ClientCR.rpt"));
                rd.SetDataSource(dt);
                rd.ExportToHttpResponse(ExportFormatType.PortableDocFormat, HttpContext.Current.Response, true, "Customerd Order Details");

                //ReportDocument rd = new ReportDocument();
                //string path = "";
                //  path = Server.MapPath(@"~/ReportContent/Daily/" + "Cash_safe_register.rpt");
                //    rd.Load(path);
                //    rd.SetDataSource(dt);
                //string PhotoPath = new Uri(Server.MapPath("~/Images/"+dt.Rows[0]["Photo"])).AbsoluteUri;
                //    rd.SetParameterValue("@Photo", );
                   
                //    CrystalReportViewer.ReportSource = rd;

                //    CrystalReportViewer.Enabled = true;
                //    CrystalReportViewer.Visible = true;


                
            }

        }



        protected void btnPending_Click(object sender, EventArgs e)
        {

            string cuId = txtId.Text.Trim();
            if (!string.IsNullOrEmpty(cuId))
            {
                int rowCount = _cpManager.OrderPending(cuId);
                if (rowCount > 0)
                {
                    Label1.Text = "Customer Order has been Pending.";
                    return;
                }
            }

            LoadPackageOrder();
        }

        protected void btnPrintAll_Click(object sender, EventArgs e)
        {
            DataTable dt = _cpManager.GetALLClientOrder();
            ReportDocument rd = new ReportDocument();
            rd.Load(HttpContext.Current.Server.MapPath("~/CeystalReport/ClientDetailsCR.rpt"));
            rd.SetDataSource(dt);
            rd.ExportToHttpResponse(ExportFormatType.PortableDocFormat, HttpContext.Current.Response, true, "Customerd Order Details");
        }
    }
}