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
    public class CustomerPackageManager
    {
        CustomerPackageGateway _cpGateway = new CustomerPackageGateway();
        internal DataTable GetAllPackageOrder()
        {
            return _cpGateway.GetAllPackageOrder();
        }

        internal int Insert(Package packages)
        {
            return _cpGateway.Insert(packages);
        }

        internal int GetCountTotal()
        {
            return _cpGateway.GetCountTotal();
        }

        internal DataTable GetAllPackage()
        {
            return _cpGateway.GetAllPackage();
        }

       
        internal DataTable SendEmail(Label sendMail)
        {
            return _cpGateway.SendEmail(sendMail);
        }

        internal DataTable GetNewOrders()
        {
            return _cpGateway.GetNewOrders();
        }

        internal DataTable ViewDetails(Label details)
        {
            return _cpGateway.ViewDetails(details);
        }

        internal int OrderConfirm(string cuId)
           {
               return _cpGateway.OrderConfirm(cuId);
           }

        internal DataTable PrintOrder(string cuId)
        {
            return _cpGateway.PrintOrder(cuId);
        }

        internal int OrderPending(string cuId)
        {
            return _cpGateway.OrderPending(cuId);
        }

        internal DataTable GetALLClientOrder()
        {
            return _cpGateway.GetALLClientOrder();
        }

        internal DataTable GetNewDoctors()
        {
            return _cpGateway.GetNewDoctors();
        }

        internal DataTable GetApprovedDoctors()
        {
            return _cpGateway.GetApprovedDoctors();
        }
    }
}