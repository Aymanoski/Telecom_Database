using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class RenewPlan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button2click(object sender, EventArgs e)
        {
            String connstR = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            SqlConnection conn = new SqlConnection(connstR);
            string x = TextBox1.Text;
            string x2 = TextBox2.Text;
            string x3 = TextBox3.Text;
            string x4 = RadioButtonList1.Text;
            if (string.IsNullOrWhiteSpace(x) || string.IsNullOrWhiteSpace(x2) || string.IsNullOrWhiteSpace(x3) || string.IsNullOrWhiteSpace(x4))
            {
                Label5.Text = "please fill the inputs";
                return;
            }
            if (x.Length != 11)
            {
                Label5.Text = "Enter a valid 11 bit number";
                return;
            }
            if (!(Decimal.TryParse(x2, out _)))
            {
                Label5.Text = "Please enter a valid mumber format.";
                return;
            }
            if (!(int.TryParse(x3, out _)))
            {
                Label5.Text = "Please enter a valid mumber format.";
                return;
            }
            if (x4 == null)
            {
                Label5.Text = "Please make a tick";
                return;
            }

            SqlCommand Reneww = new SqlCommand("Initiate_plan_payment", conn);
            Reneww.CommandType = System.Data.CommandType.StoredProcedure;
            Reneww.Parameters.AddWithValue("@mobile_num", x);
            Reneww.Parameters.AddWithValue("@amount", x2);
            Reneww.Parameters.AddWithValue("@plan_id", x3);
            Reneww.Parameters.AddWithValue("@payment_method", x4);
            Label5.Text = "Successful operation";

            conn.Open();
            try
            {
                SqlDataReader reader = Reneww.ExecuteReader();
                Label5.Text = "Successful operation";
                conn.Close();
            }
            catch
            {
                Label5.Text = "UnSuccessful operation";
                conn.Close();
            }

            conn.Close();






        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Customer Web Page.aspx");
        }
    }
}