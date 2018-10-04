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
    public class ServiceManager
    {
        ServiceGateway sGateway = new ServiceGateway();

        internal int Save(Service serviceCategory)
        {
            return sGateway.Insert(serviceCategory);
        }
        internal int SaveServiceOrg(Service serviceOrg)
        {
            return sGateway.InsertServiceOrg(serviceOrg);
        }
        internal int SaveChairman(aboutChairman chairmen)
        {
            return sGateway.InsertChairman(chairmen);
        }
        public int GetCountOrgTotal()
        {
            return sGateway.GetCountOrgTotal();
        }
        public DataTable GetChairmanInfo()
        {
            return sGateway.GetChairmanInfo();
        }

        public DataTable GetDirectorInfo()
        {
            return sGateway.GetDirectorInfo();
        }

        public DataTable GetAllCategory()
        {
            return sGateway.GetAllCategory();
        }

        public int GetCountTotal()
        {
            return sGateway.GetCountTotal();
        }

        public int GetDirectorCountTotal()
        {
            return sGateway.GetDirectorCountTotal();
        }

        internal int SaveDirector(AboutDirector director)
        {
            return sGateway.InsertDirector(director);
        }
        public DataTable DeleteChairmanInfo(Label lbleDelete)
        {
            return sGateway.DeleteChairmanInfo(lbleDelete);
        }

        public DataTable DeleteDirector(Label lbleDelete)
        {
            return sGateway.DeleteDirector(lbleDelete);
        }

        internal DataTable GetServiceCategory()
        {
            return sGateway.GetServiceCategory();
        }

        internal int Insert(customer customers)
        {
            return sGateway.Insert(customers);
        }
     

        internal DataTable GetImageReport()
        {
            return sGateway.GetImageReport();
        }

        internal DataTable GetImage()
        {
            return sGateway.GetImage();
        }

        //internal int CountImg()
        //{
        //    return sGateway.CountImg();
        //}
    }
}