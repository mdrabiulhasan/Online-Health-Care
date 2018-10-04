using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace OSHCCSApp.DAL
{
    public class DBConnection
    {
        protected SqlConnection connection;
        protected SqlCommand command;

        public DBConnection() 
        {
            connection = new SqlConnection(ConfigurationManager.ConnectionStrings["OHCC_dbConnectionString"].ConnectionString);
            command=new SqlCommand();
            command.Connection=connection;
        }
    }
}
