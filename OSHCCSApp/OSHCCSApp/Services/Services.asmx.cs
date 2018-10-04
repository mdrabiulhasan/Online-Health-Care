using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using OSHCCSApp.BLL;
using System.Web.Services;
using System.Web.Script.Services;

namespace OSHCCSApp.Services
{
    /// <summary>
    /// Summary description for Services
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class Services : System.Web.Services.WebService
    {        
        private readonly AdminManager _aManager;       
        public Services()
        {
            _aManager = new AdminManager();
          
        }      


        [WebMethod]
        public bool IsUserIdAvailable(string userId)
        {
            return _aManager.IsUserIdAvailable(userId);
        }
        
               
    }
}
