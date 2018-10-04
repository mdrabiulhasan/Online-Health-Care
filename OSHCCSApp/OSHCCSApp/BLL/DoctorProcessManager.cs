using OSHCCSApp.DAL;
using OSHCCSApp.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace OSHCCSApp.BLL
{
    public class DoctorProcessManager
    {
        DoctorProcess1Gateway _dpGateway = new DoctorProcess1Gateway();
        internal int SaveProcess1(DoctorsProcess1 dp1)
        {
            return _dpGateway.SaveProcess1(dp1);
        }

        internal int SaveProcess2(DoctorsProcess2 dp2)
        {
            return _dpGateway.SaveProcess2(dp2);
        }

        internal bool IsAllreadyExist(string doctorEmail)
        {
            return _dpGateway.IsAllreadyExist(doctorEmail);
        }

        internal int SaveProcess3(DoctorsProcess3 dp3)
        {
            return _dpGateway.SaveProcess3(dp3);
        }

        internal int SaveProcess4(DoctorsProcess4 dp4)
        {
            return _dpGateway.SaveProcess4(dp4);
        }

        internal DataTable GetConsultantInfo()
        {
            return _dpGateway.GetConsultantInfo();
        }

            public int CountImageRow()
        {
            return _dpGateway.CountImageRow();
        }

            internal DataTable GetDoctorInfoForUpdate(string docEmail)
            {
                return _dpGateway.GetDoctorInfoForUpdate(docEmail);
            }

            internal DataTable GetDoctorProfileInfo(string docEamil)
            {
                return _dpGateway.GetDoctorProfileInfo(docEamil);
            }

            public DataTable GetConsultantByCategory(string docCategory)
            {
                return _dpGateway.GetConsultantByCategory(docCategory);
            }

            internal DataTable GetDocConsultInfo(string docMail)
            {
                return _dpGateway.GetDocConsultInfo(docMail);
            }

            internal DataTable GetNewQuestion()
            {
                return _dpGateway.GetNewQuestion();
            }

            internal DataTable GetDoctorHopitalDetails(string docEamil)
            {
                return _dpGateway.GetDoctorHopitalDetails(docEamil);
            }

            internal DataTable GetDocConsultDetails(string docEamil)
            {
                return _dpGateway.GetDocConsultDetails(docEamil);
            }

            internal DataTable GetTextConsult(string docMailForText)
            {
                return _dpGateway.GetTextConsult(docMailForText);
            }

            internal DataTable GetPhoneConsult(string docMailForPhone)
            {
                return _dpGateway.GetPhoneConsult(docMailForPhone);
            }

            internal DataTable GetVideoConsultInfo(string docMailForViedo)
            {
                return _dpGateway.GetVideoConsultInfo(docMailForViedo);
            }

           
    }
}