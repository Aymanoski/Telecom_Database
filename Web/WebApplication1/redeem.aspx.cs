using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection.Emit;

namespace WebApplication1
{
    public partial class redeem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void redeem1(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            string mob = mobilenumber.Text.Trim();
            string voc = voucher.Text.Trim();

            // Validate inputs
            if (string.IsNullOrEmpty(mob) || string.IsNullOrEmpty(voc))
            {
                redemptionMessage.Text = "Please enter both mobile number and voucher ID.";
                redemptionMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }
            if (mob.Length != 11)
            {
                redemptionMessage.Text = "Please enter a Valid MoNumber";
                redemptionMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            if (!int.TryParse(voc, out _))
            {
                redemptionMessage.Text = "Please enter a valid number format.";
                redemptionMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            // Set up the SQL Command for the stored procedure
            SqlCommand voucheredemption = new SqlCommand("Redeem_voucher_points", conn);
            voucheredemption.CommandType = System.Data.CommandType.StoredProcedure;

            // Add input parameters
            voucheredemption.Parameters.Add(new SqlParameter("@mobile_num", mob));
            voucheredemption.Parameters.Add(new SqlParameter("@voucher_id", voc));

            try
            {
                // Open the connection
                conn.Open();

                // Execute the stored procedure and check affected rows
                int rowsAffected = voucheredemption.ExecuteNonQuery();

                // Display result message based on the output
                if (rowsAffected > 0)
                {
                    redemptionMessage.Text = "Voucher redeemed successfully.";
                    redemptionMessage.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    redemptionMessage.Text = "Not enough points to redeem the voucher or voucher has expired.";
                    redemptionMessage.ForeColor = System.Drawing.Color.Orange;
                }
            }
            catch (SqlException ex)
            {
                redemptionMessage.Text = "An error occurred while redeeming the voucher: " + ex.Message;
                redemptionMessage.ForeColor = System.Drawing.Color.Red;
            }
            finally
            {
                conn.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Customer Web Page.aspx");
        }
    }
}