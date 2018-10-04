using OSHCCSApp.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Script.Services;

namespace OSHCCSApp.Services
{
    /// <summary>
    /// Summary description for DoctorProcessService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class DoctorProcessService : System.Web.Services.WebService
    {
        DoctorProcessManager _dpManager = new DoctorProcessManager();

        [WebMethod]

        public bool IsAllreadyExist(string doctorEmail)
        {
            return _dpManager.IsAllreadyExist(doctorEmail);
        }

    }
}
