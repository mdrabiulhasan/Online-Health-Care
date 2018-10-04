using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OSHCCSApp.Model
{
    public class Appointments
    {
        public string DocUserId { get; set; }
        public string PaitenUserId { get; set; }
        public string AppointmentDate { get; set; }
        public string DoctorName { get; set; }
        public string PatientName { get; set; }
        public string Place { get; set; }
        public string Hospital { get; set; }
        public string Duration { get; set; }
        public string CurrentDate { get; set; }
        public string PatientPhoneNo { get; set; }
       
    }
}