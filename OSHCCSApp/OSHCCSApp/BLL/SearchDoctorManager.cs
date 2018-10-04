using OSHCCSApp.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace OSHCCSApp.BLL
{
    public class SearchDoctorManager
    {
        SearchDoctorGateway SdGateway = new SearchDoctorGateway();
        public DataTable SearchDoctor(string district)
        {
            return SdGateway.SearchDoctor(district);
        }

        public DataTable SearchDoctorByCity(string cityOrVillage)
        { 
         return SdGateway.SearchDoctorByCity(cityOrVillage);
        }

        public DataTable SearchByCategory(string category)
        {
            return SdGateway.SearchByCategory(category);
        }

 

        //public DataTable SelectCategory(string category)
        //{
        //    return SdGateway.SelectCategory(category);
        //}

        internal DataTable FilterByDistrict()
        {
            return SdGateway.FilterByDistrict();
        }
    }
}