using DHTMLX.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Globalization;
using DHTMLX.Helpers;

namespace OSHCCSApp.UI
{
    /// <summary>
    /// Summary description for Save
    /// </summary>
    public class Save : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            var action = new DataAction(context.Request.Form);
            var data = new SchedulerDataContext();

            try
            {

                var changedEvent = (Event)DHXEventsHelper.Bind(typeof(Event), context.Request.Form);//create event object from request

                switch (action.Type)
                {
                    case DataActionTypes.Insert: // define here your Insert logic
                        data.Events.InsertOnSubmit(changedEvent);

                        break;
                    case DataActionTypes.Delete: // define here your Delete logic
                        changedEvent = data.Events.SingleOrDefault(ev => ev.id == action.SourceId);
                        data.Events.DeleteOnSubmit(changedEvent);
                        break;
                    default:// "update" // define here your Update logic
                        var updated = data.Events.SingleOrDefault(ev => ev.id == action.SourceId);
                        //update "updated" object by changedEvent's values, 'id' should remain unchanged
                        DHXEventsHelper.Update(updated, changedEvent, new List<string>() { "id" });
                        break;
                }
                data.SubmitChanges();
                action.TargetId = (int)changedEvent.id;
            }
            catch
            {
                action.Type = DataActionTypes.Error;
            }

            context.Response.ContentType = "text/xml";
            context.Response.Write(new AjaxSaveResponse(action).ToString());
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