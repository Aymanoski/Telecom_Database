using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class account_plans : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand playa = new SqlCommand("Account_Plan", conn);
            playa.CommandType = CommandType.StoredProcedure;
            conn.Open();
            SqlDataReader reader = playa.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(reader);
            reader.Close();
            if (dt.Rows.Count == 0)
            {
                Label2.Text = "No results found.";
                accountypl.Visible = false;
            }
            else
            {
                Label2.Text = "";
                accountypl.DataSource = dt;
                accountypl.DataBind();
                accountypl.Visible = true;
            }
            
            conn.Close();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminPage.aspx");
        }
    }
}