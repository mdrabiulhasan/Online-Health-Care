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
    public class DoctorManager
    {
        DoctorGateway dGateway = new DoctorGateway();
        internal int Save(Doctors dDoctors)
        {
            return dGateway.Insert(dDoctors);
        }

        public bool IsDoctorExist(string docUserId) 
        {
            return dGateway.IsDoctorExist(docUserId);
        }

        public int GetCountTotal()
        {
            return dGateway.GetCountTotal();
        }
        public DataTable GetDoctorInfo() 
        {
            return dGateway.GetDoctorInfo();
        }

        public DataTable GetDistrict()
        {
            return dGateway.GetDistrict();
        }
        public DataTable GetCityVillage()
        {
            return dGateway.GetCityVillage();
        }

        //Load Doctor Category in Dropdown List from tbl_service
        public DataTable GetCategory()
        {
            return dGateway.GetCategory();

        }
 
        public DataTable GetDoctorProfileInfo(string docUserId)
        {
            return dGateway.GetDoctorProfileInfo(docUserId);
        }
        public DataTable DeletedDoctorInfo(Label lblDelete)
        {
            return dGateway.DeletedDoctorInfo(lblDelete);
        }

        public DataTable GetAboutOrg()
        {
            return dGateway.GetAboutOrg();
        }
        public DataTable GetOrgPhoto()
        {
            return dGateway.GetOrgPhoto();
        }
        public DataTable GetAppointmentList(string docUserId)
        {
            return dGateway.GetAppointmentList(docUserId);
        }

        public DataTable DeleteAboutOrg(Label lblDlete)
        {
            return dGateway.DeleteAboutOrg(lblDlete);
        }

        public DataTable PublishedDoctorInfo(Label lblPublished)
        {
            return dGateway.PublishedDoctorInfo(lblPublished);
        }

        public int Update(Doctors doctor)
        {
            return dGateway.Update(doctor);
        }

        public DataTable DeleteCategory(Label lblDlete)
        {
            return dGateway.DeleteCategory(lblDlete);
        }

        public DataTable GetDoctorInfoById(string docUserId)
        {
            return dGateway.GetDoctorInfoById(docUserId);
        }

        public DataTable UnPublishedDoctorInfo(Label lblUnPublished)
        {
            return dGateway.UnPublishedDoctorInfo(lblUnPublished);
        }

        public DataTable GetApprovedDoctorInfo() //string category
        {
            return dGateway.GetApprovedDoctorInfo();
        }

        internal DataTable GetAllDetails()
        {
            return dGateway.GetAllDetails();
        }

        internal DataTable GetDoctorSpecialist(string docCategory)
        {
            return dGateway.GetDoctorSpecialist(docCategory);
        }

        internal DataTable DoctorInfoAppointment(string doctorEmail)
        {
            return dGateway.DoctorInfoAppointment(doctorEmail);
        }

        internal DataTable GetDocProfile(string docMail)
        {
            return dGateway.GetDocProfile(docMail);
        }

        internal DataTable GetDoctorHopitalInfo(string docMail)
        {
            return dGateway.GetDoctorHopitalInfo(docMail);
        }

        internal DataTable GetAppointmentDateTime()
        {
            return dGateway.GetAppointmentDateTime();
        }

        internal DataTable GetDate()
        {
            return dGateway.GetDate();
        }

        internal DataTable GetAppDateTime(string tdate)
        {
            return dGateway.GetAppDateTime(tdate);
        }

        internal DataTable GetApp_DateTime(string dateTimes)
        {
            return dGateway.GetApp_DateTime(dateTimes);
        }

        internal DataTable GetDoctorbasicInfo(string docMail)
        {
            return dGateway.GetDoctorbasicInfo(docMail);
        }

        internal DataTable GetDBasicInfo(string doctorEmail)
        {
            return dGateway.GetDBasicInfo(doctorEmail);
        }


        internal DataTable GetAllCountry()
        {
            return dGateway.GetAllCountry();
        }
    }
}