using OSHCCSApp.DAL;
using OSHCCSApp.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace OSHCCSApp.BLL
{
    public class ConsultPatientManager
    {
        ConsultPatientGateway _cpGateway = new ConsultPatientGateway();
        internal int Save(ConsultPatient cPatient)
        {
            return _cpGateway.Insert(cPatient);
        }

        internal DataTable GetAllConsultList(string docEamil)
        {
            return _cpGateway.GetAllConsultList(docEamil);
        }
    }
}