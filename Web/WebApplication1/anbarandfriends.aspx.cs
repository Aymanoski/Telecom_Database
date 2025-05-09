using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class anbarandfriends : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void county(object sender, EventArgs e)
        {
            // Get the connection string
            string connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            // Clear any previous result text
            result.Text = string.Empty;

            try
            {
                // Retrieve input values and trim whitespace
                string mobbeb = mobdepp.Text.Trim();
                string bef = befid.Text.Trim();
                string pef = payid.Text.Trim();

                // Validate that no fields are blank
                if (string.IsNullOrEmpty(mobbeb) || string.IsNullOrEmpty(bef) || string.IsNullOrEmpty(pef))
                {
                    result.Text = "All fields must be filled in. Please complete all fields.";
                    result.ForeColor = System.Drawing.Color.Red;
                    return;
                }
                if (mobbeb.Length != 11)
                {
                    result.Text = "Enter 11 bit Mobile number";
                    result.ForeColor = System.Drawing.Color.Red;
                    return;
                }

                // Validate that Benefit ID and Payment ID are numeric
                if (!int.TryParse(bef, out int benefitId))
                {
                    result.Text = "Invalid Benefit ID. Please enter a numeric value.";
                    result.ForeColor = System.Drawing.Color.Red;
                    return;
                }

                if (!int.TryParse(pef, out int paymentId))
                {
                    result.Text = "Invalid Payment ID. Please enter a numeric value.";
                    result.ForeColor = System.Drawing.Color.Red;
                    return;
                }

                // Set up the SQL command for the stored procedure
                SqlCommand cashbackCommand = new SqlCommand("Payment_wallet_cashback", conn);
                cashbackCommand.CommandType = System.Data.CommandType.StoredProcedure;

                // Add parameters for the stored procedure
                cashbackCommand.Parameters.Add(new SqlParameter("@mobile_num", mobbeb));
                cashbackCommand.Parameters.Add(new SqlParameter("@payment_id", paymentId));
                cashbackCommand.Parameters.Add(new SqlParameter("@benefit_id", benefitId));

                // Open the connection
                conn.Open();

                // Execute the stored procedure
                int rowsAffected = cashbackCommand.ExecuteNonQuery();

                // Provide feedback to the user
                if (rowsAffected > 0)
                {
                    result.Text = "Cashback successfully applied to the wallet!";
                    result.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    result.Text = "No rows were updated. Please check your input or ensure the payment is successful.";
                    result.ForeColor = System.Drawing.Color.Orange;
                }
            }
            catch (Exception ex)
            {
                // Handle errors and display them
                result.Text = "An error occurred: " + ex.Message;
                result.ForeColor = System.Drawing.Color.Red;
            }
            finally
            {
                // Close the connection
                if (conn.State == System.Data.ConnectionState.Open)
                {
                    conn.Close();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Customer Web Page.aspx");
        }
    }
}