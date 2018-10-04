using OSHCCSApp.BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OSHCCSApp.UI
{
    public partial class DoctorsBookPage : System.Web.UI.Page
    {
        DoctorManager dManager = new DoctorManager();
        SearchDoctorManager SdManager = new SearchDoctorManager();
        string docCategory;
        static int currentPosition = 0;
        static int totalRows = 0;       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCountry();
                LoadDistrict();
                LoadCategory();
                LoadCityVillage();
                LoadDoctorDetails();
                if (Session["category"] != null)
                {
                    docCategory = Session["category"].ToString();
                    if (docCategory != null)
                    {
                        LoadDoctorSpecialisth(docCategory);
                       // Label1.Text = docCategory;

                    }
                }
            }
            Session.Remove("category");           
        }
               
        public void LoadDoctorSpecialisth(string docCategory)
        {
            DataTable dt = dManager.GetDoctorSpecialist(docCategory);
            DataList2.DataSource = dt;
            DataList2.DataBind();
        }

        public void LoadDoctorDetails()
        {
            DataTable dt = dManager.GetAllDetails();
            DataList2.DataSource = dt;
            DataList2.DataBind();

            //totalRows = dt.Rows.Count;
            //PagedDataSource pd = new PagedDataSource();
            //pd.DataSource = dt.DefaultView;
            //pd.AllowPaging = true;
            //pd.CurrentPageIndex = currentPosition;
            //pd.PageSize = 3;
            //btrPrevious.Enabled = !pd.IsFirstPage;
            //btn2.Enabled = !pd.IsFirstPage;
            //btn3.Enabled = !pd.IsLastPage;
            //btnNext.Enabled = !pd.IsLastPage;
            //DataList2.DataSource = pd;
            //DataList2.DataBind();
           
        }
        private void LoadCountry()
        {
            DataTable dt = dManager.GetAllCountry();
            ddCountry.DataSource = dt;
            ddCountry.DataTextField = "country";
            ddCountry.DataBind();
            ddCountry.Items.Insert(0,new ListItem("Search By Counrty","0"));
        }
       public void LoadDistrict()
        {
            DataTable tbl = dManager.GetDistrict();
            ddDistrict.DataSource = tbl;
            ddDistrict.DataTextField = "district";
            ddDistrict.DataBind();
            ddDistrict.Items.Insert(0, new ListItem("Search By District", "0"));
        }

        public void LoadCategory()
        {
            DataTable tbl = dManager.GetCategory();
            ddlDoctorCategory.DataSource = tbl;
            ddlDoctorCategory.DataTextField = "category";
            ddlDoctorCategory.DataValueField = "id";
            ddlDoctorCategory.DataBind();
            ddlDoctorCategory.Items.Insert(0, new ListItem("Search By Specialist", "0"));
           
        }
        public void LoadCityVillage()
        {
            DataTable tbl = dManager.GetCityVillage();
            ddCityVillage.DataSource = tbl;
            ddCityVillage.DataTextField = "subDistrict";
            ddCityVillage.DataBind();
            ddCityVillage.Items.Insert(0, new ListItem("Search By City/Village", "0"));
        }
        protected void ddlDoctorCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            string category = ddlDoctorCategory.SelectedValue;
            if (category != null)
            {
                DataTable dt = SdManager.SearchByCategory(category);
                DataList2.DataSource = dt;
                DataList2.DataBind();
                return;
            }
        }
        protected void ddDistrict_SelectedIndexChanged(object sender, EventArgs e)
        {
            string district = ddDistrict.SelectedItem.Value;
            if (district != null)
            {
                DataTable tbl = SdManager.SearchDoctor(district);
                DataList2.DataSource = tbl;
                DataList2.DataBind();
                return;
            }
        }
        protected void ddCityVillage_SelectedIndexChanged(object sender, EventArgs e)
        {
            string cityOrVillage = ddCityVillage.SelectedItem.Value;
            if (cityOrVillage != null)
            {
                DataTable dt = SdManager.SearchDoctorByCity(cityOrVillage);
                DataList2.DataSource = dt;
                DataList2.DataBind();
                return;
            }
        }
        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {
                DataTable dt = SdManager.FilterByDistrict();
                DataList2.DataSource = dt;
                DataList2.DataBind();
                return;
            }
        }

        protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "APPOINTMENT")
            {
                //Response.Redirect("DoctorAppointment.aspx?doctorEmail="+e.CommandArgument.ToString());
                Session["Email"] = e.CommandArgument.ToString();
                Response.Redirect("DoctorAppointment.aspx");
            }
            if (e.CommandName == "P")
            {
                Session["dEmail"] = e.CommandArgument.ToString();
                Response.Redirect("ViewDocProfile.aspx");
            }
        }

        protected void btrPrevious_Click(object sender, EventArgs e)
        {
            currentPosition = 0;
            LoadDoctorDetails();
        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            if (currentPosition == totalRows - 1)
            {
                
            }
            else
            {
                currentPosition = currentPosition + 1;
                LoadDoctorDetails();
            }

        }

        protected void btn3_Click(object sender, EventArgs e)
        {
            if (currentPosition == 0)
            {
            }
            else
            {
                currentPosition = currentPosition -1;
                LoadDoctorDetails();
            }

        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            currentPosition = totalRows - 1;
            LoadDoctorDetails();
        }


    }
}
