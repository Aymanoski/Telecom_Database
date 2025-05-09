using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Runtime.InteropServices.ComTypes;

namespace WebApplication1
{
    public partial class totalusage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            string moboiy = texty1.Text;
            string loloiy = texty2.Text;

            // Check if fields are empty
            if (string.IsNullOrWhiteSpace(moboiy) || string.IsNullOrWhiteSpace(loloiy))
            {
                hello.Text = "Please fill in all.";
                GridView1.Visible = false;
                return;
            }

            // Check if date format is valid
            DateTime parsedDateTime;
            bool isValidDateTime2 = DateTime.TryParse(loloiy, out parsedDateTime);

            if (!isValidDateTime2)
            {
                hello.Text = "Please enter a valid date format.";
                GridView1.Visible = false;
                return;
            }

            // Check if mobile number is valid
            if (moboiy.Length != 11)
            {
                hello.Text = "Please enter a valid 11-digit mobile number.";
                GridView1.Visible = false;
                return;
            }

            // Clear the hello label and fetch data
            SqlCommand java = new SqlCommand("SELECT * FROM dbo.Account_Usage_Plan(@mobile_num, @start_date)", conn);
            java.CommandType = CommandType.Text;
            java.Parameters.AddWithValue("@mobile_num", moboiy);
            java.Parameters.AddWithValue("@start_date", loloiy);

           
            
                conn.Open();
                SqlDataAdapter da = new SqlDataAdapter(java);
                DataTable dt = new DataTable();
                da.Fill(dt);

                // Check if data is returned
                if (dt.Rows.Count == 0)
                {
                    hello.Text = "No results found.";
                    GridView1.Visible = false;
                }
                else
                {
                    hello.Text = "";
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    GridView1.Visible = true;
                }
                conn.Close();
            }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminPage.aspx");
        }
    }
}