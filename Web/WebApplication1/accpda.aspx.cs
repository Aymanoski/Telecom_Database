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
    public partial class accpda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            string moboy = mobo.Text;
            string loloy = lolo.Text;


            if (string.IsNullOrWhiteSpace(moboy) || string.IsNullOrWhiteSpace(loloy))
            {
                hello.Text = "Please fill in all.";
                GridView1.Visible = false;
                return;
            }
            DateTime parsedDateTime;
            bool isValidDateTime2 = DateTime.TryParse(loloy, out parsedDateTime);

            if (!isValidDateTime2)
            {
                hello.Text = "Please enter a valid date format.";
                GridView1.Visible = false;
                return;
            }
            if (!(int.TryParse(moboy, out _)))
            {
                hello.Text = "Please enter a valid mumber format.";
                GridView1.Visible = false;
                return;
            }

            SqlCommand java = new SqlCommand("SELECT *  FROM dbo.Account_Plan_date(@sub_date, @plan_id)", conn);
            java.CommandType = CommandType.Text;


            java.Parameters.AddWithValue("@sub_date",loloy );
            java.Parameters.AddWithValue("@plan_id", moboy);


            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(java);
            DataTable dt = new DataTable();
            da.Fill(dt);


            if (dt.Rows.Count == 0)
            {
                hello.Text = "No results found.";
                GridView1.Visible = false;
            }
            else
            {
                hello.Text = "";
                GridView1.DataSource = dt;
                GridView1.DataBind();
                GridView1.Visible = true;
            }
            conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminPage.aspx");
        }
    }
}