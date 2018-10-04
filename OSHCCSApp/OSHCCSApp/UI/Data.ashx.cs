using DHTMLX.Scheduler.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OSHCCSApp.UI
{
    /// <summary>
    /// Summary description for Data
    /// </summary>
    public class Data : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            SchedulerAjaxData data;
            var dc = new SchedulerDataContext();

            if (context.Request.QueryString["recurring"] == null)
                data = new SchedulerAjaxData(dc.Events);
            else
                data = new SchedulerAjaxData(dc.Recurrings);

            context.Response.ContentType = "text/json";
            context.Response.Write(data.ToString()); ;
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}