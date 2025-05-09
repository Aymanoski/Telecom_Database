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
    public partial class UsagePlanMonth : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string mobileNumber = txtMobileNumber.Text.Trim();
            if (mobileNumber.Length != 11)
            {
                Label1.Text = "Please enter a valid 11 biit number";
                gvUsagePlan.Visible = false;   
                return;
            }

            Label1.Text = "";
            gvUsagePlan.Visible = true;
            // Connection string (update with your database details)
            string connectionString = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM dbo.Usage_Plan_CurrentMonth(@mobile_num)", conn))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@mobile_num", mobileNumber);

                    try
                    {
                        conn.Open();
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);

                        gvUsagePlan.DataSource = dt;
                        gvUsagePlan.DataBind();
                    }
                    catch (Exception ex)
                    {
                        
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Customer Web Page.aspx");
        }
    }
}