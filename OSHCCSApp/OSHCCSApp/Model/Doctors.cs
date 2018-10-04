using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OSHCCSApp.Model
{
    public class Doctors
    {
        public string DoctorUserId { get; set; }
        public string Fullname { get; set; }
        public string DateOFBirth {get; set;}
        public string NId { get; set; }
        public string Category { get; set; }
        public string Designation { get; set; }
        public string About { get; set; }
        public string Hospital { get; set; }
        public string Chember { get; set; }
        public string Country { get; set; }
        public string District { get; set; }
        public string CityOrVillage { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
        public string PhoneNo { get; set; }
        public string Photo { get; set; }
    }
}