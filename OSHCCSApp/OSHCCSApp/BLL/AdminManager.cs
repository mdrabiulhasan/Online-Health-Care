
using OSHCCSApp.DAL;
using OSHCCSApp.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace OSHCCSApp.BLL
{
    public class AdminManager
    {
        AdminGateway aAdminGateway = new AdminGateway();
        internal int Save(Admin aAdmin)
        {
            return aAdminGateway.Insert(aAdmin);
        }

        public int GetCountTotal()
        {
            return aAdminGateway.GetCountTotal();
        }

        public bool IsUserIdAvailable(string userId)
        {
            return aAdminGateway.IsUserIdAvailable(userId);
        }

        public DataTable GetAllAdminInfo()
        {
            return aAdminGateway.GetAllAdminInfo();
        }

        public DataTable DeleteAdmin(Label lblDelete)
        {
            return aAdminGateway.DeleteAdmin(lblDelete);
        }

        public bool AdminLogin(string userName, string password)
        {
            return aAdminGateway.AdminLogin(userName, password);
        }

        public DataTable GetAdmin(string userId)
        {
            return aAdminGateway.GetAdmin(userId);
        }

        public DataTable GetAdminInfoById(string UserId)
        {
            return aAdminGateway.GetAdminInfoById(UserId);
        }
    }
}