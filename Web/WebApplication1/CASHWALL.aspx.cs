using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

namespace WebApplication1
{
    public partial class CASHWALL : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            SqlCommand accountLog = new SqlCommand("SELECT dbo.Wallet_Cashback_Amount(@walletID, @planID)", conn);
            accountLog.CommandType = CommandType.Text;

            string walletID = TextBox1.Text;
            string planID = TextBox2.Text;
            if (string.IsNullOrWhiteSpace(walletID) || string.IsNullOrWhiteSpace(planID))
            {
                // Display an error message or handle the situation accordingly
                hello.Text = "Please fill in both wallet ID and plan ID.";
                return;
            }
            if (!((int.TryParse(walletID, out _))&& (int.TryParse(planID, out _))))
            {
                hello.Text = "Please enter a valid mumber format.";
                return;
            }

            accountLog.Parameters.AddWithValue("@walletID", walletID);
            accountLog.Parameters.AddWithValue("@planID", planID);

            conn.Open();

            object result = accountLog.ExecuteScalar();
            int cashbackAmount = (result != DBNull.Value) ? Convert.ToInt32(result) : 0;  // ExecuteScalar is used for functions returning a single value


            hello.Text = "Cashback Amount: " + cashbackAmount.ToString();
            conn.Close();




        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminPage.aspx");
        }
    }
}