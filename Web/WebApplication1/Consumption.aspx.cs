using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Consumption : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Page initialization if needed
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Get user inputs
            string planName = txtPlanName.Text;
            string startDate = txtStartDate.Text;
            string endDate = txtEndDate.Text;

            // Validate inputs
            if (string.IsNullOrWhiteSpace(planName) || string.IsNullOrWhiteSpace(startDate) || string.IsNullOrWhiteSpace(endDate))
            {
                Label1.Text = "please fill the inputs";
                gvConsumption.Visible = false;
                return;
            }
            DateTime parsedDateTime;
            bool isValidDateTime = DateTime.TryParse(startDate, out parsedDateTime);
            DateTime parsedDateTime2;
            bool isValidDateTime2 = DateTime.TryParse(endDate, out parsedDateTime2);
            if (!(isValidDateTime2&& isValidDateTime))
            {
                Label1.Text = "Please enter a valid date format.";
                gvConsumption.Visible=false;    
                return;
            }
            Label1.Text = "";
            gvConsumption.Visible = true;
            // Fetch data from database
            DataTable consumptionData = GetConsumptionData(planName, startDate, endDate);

            // Bind data to GridView
            
            gvConsumption.DataSource = consumptionData;
            gvConsumption.DataBind();
        }

        private DataTable GetConsumptionData(string planName, string startDate, string endDate)
        {
            DataTable resultTable = new DataTable();

            // Database connection string (update as per your configuration)
            string connectionString = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM Consumption(@PlanName, @StartDate, @EndDate)", conn))
                {
                    cmd.CommandType = CommandType.Text;

                    // Add parameters
                    cmd.Parameters.AddWithValue("@PlanName", planName);
                    cmd.Parameters.AddWithValue("@StartDate", startDate);
                    cmd.Parameters.AddWithValue("@EndDate", endDate);


                    // Execute query
                    using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                    {
                        adapter.Fill(resultTable);
                    }
                }
            }

            return resultTable;
        }

       

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Customer Web Page.aspx");
        }
    }
}