using DHTMLX.Scheduler;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OSHCCSApp.UI
{
    public partial class BookScheduler : System.Web.UI.Page
    {
        public DHXScheduler Scheduler { get; set; }
        string docEamil;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["doctorEmail"] != null)
            //{
            //    docEamil = Session["doctorEmail"].ToString();
            //    //lblmsg.Text = Session["doctorEmail"].ToString();
            //}
            this.Scheduler = new DHXScheduler();
            DateTime today = DateTime.Today;
            //dt = (today.ToString("dd/MM/yyyy"));
            Scheduler.InitialDate = today;//new DateTime(2018, 9, 10);

            Scheduler.Config.first_hour = 8; //GetFHour();
            Scheduler.Config.last_hour =19; //GetLHour();
            Scheduler.Config.time_step = 15;
            Scheduler.Config.limit_time_select = true;

            Scheduler.DataAction = this.ResolveUrl("Data.ashx");
            Scheduler.SaveAction = this.ResolveUrl("Save.ashx");
            Scheduler.LoadData = true;
            Scheduler.EnableDataprocessor = true;

        }

        private int GetFHour()
        {

            try
            {
                int fhour = 0;
                //DataTable dt = new DataTable();
                //string query = "select fhour from tablename";
                //SqlCommand cmd = new SqlCommand(query);
                //SqlDataAdapter da = new SqlDataAdapter(cmd);
                //da.Fill(dt);
                //if (dt.Rows.Count > 0)
                //{
                //    fhour = Convert.ToInt32(dt.Rows[0]["fhour"]);
                //}
                return fhour;
            }
            catch (Exception)
            {

                throw;
            }
        }

        private int GetLHour()
        {

            try
            {
                int lhour = 0;
                //DataTable dt = new DataTable();
                //string query = "select lhour from tablename";
                //SqlCommand cmd = new SqlCommand(query);
                //SqlDataAdapter da = new SqlDataAdapter(cmd);
                //da.Fill(dt);
                //if (dt.Rows.Count > 0)
                //{
                //    lhour = Convert.ToInt32(dt.Rows[0]["lhour"]);
                //}
                return lhour;
            }
            catch (Exception)
            {

                throw;
            }
        }

        private int GetGapTime()
        {

            try
            {
                int gTime = 0;
                //DataTable dt = new DataTable();
                //string query = "select GapTime from tablename";
                //SqlCommand cmd = new SqlCommand(query);
                //SqlDataAdapter da = new SqlDataAdapter(cmd);
                //da.Fill(dt);
                //if (dt.Rows.Count > 0)
                //{
                //    gTime = Convert.ToInt32(dt.Rows[0]["GapTime"]);
                //}
                return gTime;
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}