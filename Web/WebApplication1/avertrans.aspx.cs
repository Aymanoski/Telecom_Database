using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Reflection.Emit;

namespace WebApplication1
{
    public partial class avertrans : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            SqlCommand accountLog = new SqlCommand("SELECT dbo.Wallet_Transfer_Amount(@walletID,@start_date,@end_date)", conn);
            accountLog.CommandType = CommandType.Text;

            string walletID = TextBox1.Text;
            string startdate = TextBox2.Text;
            string enddate = TextBox3.Text;
            if (string.IsNullOrWhiteSpace(walletID) || string.IsNullOrWhiteSpace(startdate) || 
                string.IsNullOrWhiteSpace(enddate))
            {
                // Display an error message or handle the situation accordingly
                hello.Text = "Please fill in all.";
                return;
            }
            if (!(int.TryParse(walletID, out _)))
            {
                hello.Text = "Please enter a valid mumber format.";
                return;
            }


            DateTime parsedDateTime;
            bool isValidDateTime = DateTime.TryParse(startdate, out parsedDateTime);
            DateTime parsedDateTime2;
            bool isValidDateTime2 = DateTime.TryParse(enddate, out parsedDateTime);

            if(!(isValidDateTime && isValidDateTime2))
            {
                hello.Text = "Please enter a valid date format";
                return;
            }
            accountLog.Parameters.AddWithValue("@walletID", walletID);
            accountLog.Parameters.AddWithValue("@start_date", startdate);
            accountLog.Parameters.AddWithValue("@end_date", enddate);

            conn.Open();

            object result = accountLog.ExecuteScalar();
            int cashbackAmount = (result != DBNull.Value) ? Convert.ToInt32(result) : 0;  // ExecuteScalar is used for functions returning a single value


            hello.Text = "Average number of transaction amount is: " + cashbackAmount.ToString();
            conn.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminPage.aspx");
        }
    }
}