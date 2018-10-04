using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using OSHCCSApp.BLL;
using OSHCCSApp.Model;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OSHCCSApp.UI
{
    public partial class uploadImage : System.Web.UI.Page
    {
        ServiceManager _Smanager = new ServiceManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = _Smanager.GetImage();
                DataList1.DataSource = dt;
                DataList1.DataBind();
            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
          
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["OHCC_dbConnectionString"].ConnectionString);

            if (!imgUploader.HasFile)
            {
                lblMessage.Visible = true;

                lblMessage.Text = "Please Select Image File";    //checking if file uploader has no file selected

            }
            else
            {
                int length = imgUploader.PostedFile.ContentLength;
                byte[] image = new byte[length];
                imgUploader.PostedFile.InputStream.Read(image, 0, length);
                //imgUploader.PostedFile.SaveAs(Server.MapPath("~/Test/") + image);
                connection.Open();
                var sql = "Insert Into image_tbl(photo) values (@photo)";
                SqlCommand command = new SqlCommand(sql, connection);
                command.Parameters.AddWithValue("@photo", image);
                command.ExecuteNonQuery();
                lblMessage.Text = "Image Upload";
                connection.Close();

            }

        }

    }
}