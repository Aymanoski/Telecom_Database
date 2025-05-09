using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Web.Configuration;

namespace WebApplication1
{
    public partial class WalletLink : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

       

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("adminPage.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();

            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand accountLog = new SqlCommand("SELECT dbo.Wallet_MobileNo(@mobile_num)", conn);
            accountLog.CommandType = CommandType.Text;

            string mobileNumber = TextBox1.Text.Trim();

            // Validate mobile number length
            if (mobileNumber.Length != 11)
            {
                Label3.Text = "Enter a phone number consisting of 11 digits!";
                return;
            }

            accountLog.Parameters.AddWithValue("@mobile_num", mobileNumber);

            conn.Open();
            object result = accountLog.ExecuteScalar();

            bool walletExists = (result != DBNull.Value) && Convert.ToBoolean(result);

            // Display the result
            Label3.Text = walletExists ?
                "Wallet exists for the given mobile number." :
                "No wallet found for the given mobile number.";
            conn.Close();   
        }
    }
}