using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OSHCCSApp.Model
{
    public class DAppointment
    {
        public string DoctorName { get; set; }
        public string DoctorEmail { get; set; }
        public string PatientName { get; set; }
        public string AppointmentDate { get; set; }
        public string PatientEmail { get; set; }
        public string PatientPhone { get; set; }
        public string HospitalName { get; set; }
    }
}