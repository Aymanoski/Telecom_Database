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
    public partial class DeletePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            string Mobilo = toto1.Text;
            string plano = toto2.Text;

            if (string.IsNullOrWhiteSpace(Mobilo) || string.IsNullOrWhiteSpace(plano))
            {
                // Display an error message or handle the situation accordingly
                Label4.Text = "Please fill in both wallet ID and plan ID.";
                return;
            }

            if (Mobilo.Length != 11)
            {
                Label4.Text = "please enter an 11 bit number";
                return;
            }
            if (!(int.TryParse(plano, out _)))
            {
                Label4.Text = "Please enter a valid mumber format.";
                return;
            }


            SqlCommand playa = new SqlCommand("Benefits_Account", conn);
            playa.CommandType = CommandType.StoredProcedure;


            playa.Parameters.AddWithValue("@mobile_num", Mobilo);
            playa.Parameters.AddWithValue("@plan_id", plano);


            conn.Open();
           playa.ExecuteNonQuery();
       
            conn.Close();
            Label4.Text = "Deleted succesifully";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminPage.aspx");
        }
    }
}