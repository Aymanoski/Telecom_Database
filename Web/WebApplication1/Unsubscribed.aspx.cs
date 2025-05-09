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
    public partial class Unsubscribed : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string mobileNumber = txtMobileNumber.Text.Trim();

           
            if (mobileNumber.Length != 11)
            {
                Label1.Text = "Please enter an 11 number";
                gvUnsubscribedPlans.Visible = false;
                return;
                
            }
            Label1.Text = "";
            gvUnsubscribedPlans.Visible = true;
            // Connection string (update with your database details)
            string connectionString = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("[Unsubscribed_Plans]", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@mobile_num", mobileNumber);

                    try
                    {
                        conn.Open();
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);

                        gvUnsubscribedPlans.DataSource = dt;
                        gvUnsubscribedPlans.DataBind();
                    }
                    catch (Exception ex)
                    {
                        // Handle errors (e.g., show an error message)
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