using OSHCCSApp.DAL;
using OSHCCSApp.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace OSHCCSApp.BLL
{
    public class AppointmentManager
    {
        AppoinmentGateway _dpAppointment = new AppoinmentGateway();
        internal int Save(DAppointment dpAppointments)
        {
            return _dpAppointment.Insert(dpAppointments);
        }

        internal DataTable GetAllAppointment(string dEmail)
        {
            return _dpAppointment.GetAllAppointment(dEmail);
        }
    }
}