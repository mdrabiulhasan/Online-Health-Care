using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OSHCCSApp.Model
{
    public class Users
    {
        public string PatientUserId { get; set; }
        public string FullName { get; set; }
        public string Gender { get; set; }
        public string Birthday { get; set; }
        public string Country { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
        public string PhoneNo { get; set; }
    }
}