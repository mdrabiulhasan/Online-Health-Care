using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OSHCCSApp.Model
{
    public class AnswerQuestion
    {
        public int QuestionId { get; set; }
        public string DoctorEmail { get; set; }
        public string userEmail { get; set; }
        public string AnswerDetails { get; set; }
        public string AnsPhoto { get; set; }
    }
}