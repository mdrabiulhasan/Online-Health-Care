using OSHCCSApp.DAL;
using OSHCCSApp.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace OSHCCSApp.BLL
{
    public class DoctorLoginManager
    {
        DoctorLoignGateway dLGateway = new DoctorLoignGateway();
        public bool DoctorLogin(string DoctorUserId, string Password)
        {
            return dLGateway.DoctorLogin(DoctorUserId, Password);
        }



        internal bool DocLogin(string docEmail,string docPassword)
        {
            return dLGateway.DocLogin(docEmail, docPassword);
        }
    }
}
   