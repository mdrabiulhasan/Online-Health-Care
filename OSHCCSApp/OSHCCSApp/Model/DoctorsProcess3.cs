using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OSHCCSApp.Model
{
    public class DoctorsProcess3
    {
        public string DoctorEmail { get; set; }
        public string Days { get; set; }
        public string HospitalName { get; set; }
        public string ChamberName { get; set; }
        public string District { get; set; }
        public string SubDistrict { get; set; }
        public string StartTime { get; set; }
        public string EndTime { get; set; }
        public string NewVisit { get; set; }
        public string OldVisit { get; set; }
    }
}