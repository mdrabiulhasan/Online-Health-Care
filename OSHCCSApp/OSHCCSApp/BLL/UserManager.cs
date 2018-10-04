using System.Data;
using OSHCCSApp.DAL;
using OSHCCSApp.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OSHCCSApp.BLL
{
    public class UserManager
    {
        UserGateway userGateway=new UserGateway();
        internal int Save(Users paients)
        {
           
            return userGateway.Insert(paients);
        }

        public int GetCountTotal()
        {
            return userGateway.GetCountTotal();
        }

        public bool IsUserExist(string paitenUserId)
        {
            return userGateway.IsUserExist(paitenUserId);
        }

        public DataTable GetAllUser()
        {
            return userGateway.GetAllUser();
        }

        public bool UserLogin(string uId, string uPassword)
        {
            return userGateway.UserLogin(uId, uPassword);
        }

        public DataTable GetUserInfo(string uId)
        {
            return userGateway.GetUserInfo(uId);
        }


        public int Save(Appointments ap)
        {
            return userGateway.Insert(ap);
        }
    }
}