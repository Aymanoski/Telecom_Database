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
    public partial class updatepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand accountLog = new SqlCommand("Total_Points_Account", conn);
            accountLog.CommandType = CommandType.StoredProcedure;


            string mobileNum = TextBox1.Text;


            if (mobileNum.Length != 11)
            {
                hello.Text = " Please enter an 11-digit mobile number.";
                return;
            }


            accountLog.Parameters.Add("@mobile_num", SqlDbType.Char).Value = mobileNum;


            conn.Open();
            accountLog.ExecuteNonQuery();

            // Retrieve the updated points for display
            SqlCommand getPoints = new SqlCommand("SELECT points FROM customer_account WHERE mobileNo = @mobile_num", conn);
            getPoints.Parameters.Add("@mobile_num", SqlDbType.Char).Value = mobileNum;

            object result = getPoints.ExecuteScalar();
            int updatedPoints = (result != DBNull.Value) ? Convert.ToInt32(result) : 0;

            hello.Text = "Updated points for mobile number " + mobileNum + " are: " + updatedPoints.ToString();
            conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminPage.aspx");
        }
    }
}