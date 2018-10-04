using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OSHCCSApp.Model
{
    public class ConsultPatient
    {
        public string DoctorEmail { get; set; }
        public string PatientName { get; set; }
        public string PhoneNo { get; set; }
        public string PatientEmail { get; set; }
        public string ConsultType { get; set; }
        public string Duration { get; set; }
       
    }
}