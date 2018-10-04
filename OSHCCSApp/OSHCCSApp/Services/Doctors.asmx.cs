using OSHCCSApp.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace OSHCCSApp.Services
{
    /// <summary>
    /// Summary description for Doctors
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
     [System.Web.Script.Services.ScriptService]
    public class Doctors : System.Web.Services.WebService
    {
        DoctorManager _dManager = new DoctorManager();

        [WebMethod]
        public bool IsDoctorExist(string docUserId)
        {
            return _dManager.IsDoctorExist(docUserId);
        
        }
    }
}
