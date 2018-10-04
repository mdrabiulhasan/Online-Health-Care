using OSHCCSApp.DAL;
using OSHCCSApp.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace OSHCCSApp.BLL
{
    public class LabTestInfoManager
    {
        LabTestInfoGateway _ltgateway = new LabTestInfoGateway();
        internal DataTable GetLabTestInfo()
        {
            return _ltgateway.GetLabTestInfo();
        }
        internal int Save(LabTests tTests)
        {
            return _ltgateway.Insert(tTests);
        }

        internal DataTable GetLab()
        {
            return _ltgateway.GetLab();
        }

        internal DataTable GetLabTest(string lName)
        {
            return _ltgateway.GetLabTest(lName);
        }

        internal int Save(SubTests sTests)
        {
            return _ltgateway.Save(sTests);
        }

        internal DataTable GetLabDetails(string lname)
        {
            return _ltgateway.GetLabDetails(lname);
        }

        internal DataTable GetAllTests()
        {
            return _ltgateway.GetAllTests();
        }



        internal DataTable GetAllByDistrict(string searchDistrict)
        {
            return _ltgateway.GetAllByDistrict(searchDistrict);
        }
    }
}