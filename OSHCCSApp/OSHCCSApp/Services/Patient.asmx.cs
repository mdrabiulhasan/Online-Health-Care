using OSHCCSApp.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace OSHCCSApp.Services
{
    /// <summary>
    /// Summary description for Patient
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
     [System.Web.Script.Services.ScriptService]
    public class Patient : System.Web.Services.WebService
    {

        UserManager _uManager = new UserManager();
        [WebMethod]
        public bool IsUserExist(string paitenUserId)
        {
            return _uManager.IsUserExist(paitenUserId);
        }
    }
}
