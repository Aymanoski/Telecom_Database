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
    public partial class allServicePlans : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1(object sender, EventArgs e)
        {

            String connstR = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            SqlConnection conn = new SqlConnection(connstR);
            string x = TextBox1.Text;
            if (x.Length != 11)
            {
                Label2.Text = "please enter a 11 bit number";
                GridView1.Visible = false;  
                return;
            }
            Label2.Text = "";
            GridView1.Visible = true;
            SqlCommand servicep = new SqlCommand("Select * from dbo.Subscribed_plans_5_Months(@MobileNo)", conn);
            servicep.CommandType = System.Data.CommandType.Text;
            servicep.Parameters.AddWithValue("@MobileNo", x);
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(servicep);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count == 0 || dt.Columns.Count == 0)
            {
                // If no data, display "Not Available"
                Label2.Text = "Not Available";
                GridView1 .Visible = false; 
            }
            else
            {
                // Bind data to GridView and clear Label2
                GridView1.DataSource = dt;
                GridView1.DataBind();
                Label2.Text = "";
            }
            conn.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Customer Web Page.aspx");
        }
    }
}