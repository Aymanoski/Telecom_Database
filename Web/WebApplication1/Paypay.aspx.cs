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
    public partial class Paypay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void payplop(object sender, EventArgs e)
        {
            // Initialize connection string and SQL connection
            string connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            // Retrieve input values
            string mob = mobnom.Text.Trim();
            string amountStr = aamount.Text.Trim();
            string paymentMethod = payment_method.Text.Trim();

            // Check if any input is blank
            if (string.IsNullOrEmpty(mob) || string.IsNullOrEmpty(amountStr) || string.IsNullOrEmpty(paymentMethod))
            {
                rechargeMessage.Text = "All fields must be filled out.";
                rechargeMessage.ForeColor = System.Drawing.Color.Red;
                return; // Exit the function if inputs are blank
            }

            // Validate that the amount is a valid decimal
            decimal amount = 0;
            if (!decimal.TryParse(amountStr, out amount) || amount <= 0)
            {
                rechargeMessage.Text = "Please enter a valid amount greater than zero.";
                rechargeMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }
            if(!(paymentMethod=="cash"|| paymentMethod == "credit"))
            {
                rechargeMessage.Text = "enter 'cash' or 'credit' ";
                rechargeMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            try
            {
                // Open the connection
                conn.Open();

                // Prepare the SQL command for the payment insertion
                SqlCommand cmd = new SqlCommand("INSERT INTO Payment (amount, date_of_payment, payment_method, status, mobileNo) " +
                                               "VALUES (@amount, CURRENT_TIMESTAMP, @payment_method, 'successful', @mobile_num)", conn);

                // Add parameters for the SQL query
                cmd.Parameters.Add(new SqlParameter("@amount", amount));
                cmd.Parameters.Add(new SqlParameter("@payment_method", paymentMethod));
                cmd.Parameters.Add(new SqlParameter("@mobile_num", mob));

                // Execute the payment insertion
                int rowsAffected = cmd.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    // Update customer balance after successful payment
                    SqlCommand updateCmd = new SqlCommand("UPDATE customer_account SET balance = balance + @amount WHERE mobileNo = @mobile_num", conn);
                    updateCmd.Parameters.Add(new SqlParameter("@amount", amount));
                    updateCmd.Parameters.Add(new SqlParameter("@mobile_num", mob));

                    int rowsUpdated = updateCmd.ExecuteNonQuery();

                    if (rowsUpdated > 0)
                    {
                        // Success message after recharge
                        rechargeMessage.Text = "Recharge successful. Your balance has been updated.";
                        rechargeMessage.ForeColor = System.Drawing.Color.Green;
                    }
                    else
                    {
                        rechargeMessage.Text = "Error updating balance. Please try again.";
                        rechargeMessage.ForeColor = System.Drawing.Color.Red;
                    }
                }
                else
                {
                    rechargeMessage.Text = "Error processing payment. Please try again.";
                    rechargeMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
            catch (Exception ex)
            {
                rechargeMessage.Text = "An error occurred: check the number ";
                rechargeMessage.ForeColor = System.Drawing.Color.Red;
            }
            finally
            {
                conn.Close(); // Ensure the connection is always closed
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Customer Web Page.aspx");
        }
    }
}