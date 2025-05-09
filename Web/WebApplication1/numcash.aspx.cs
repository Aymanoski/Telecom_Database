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
    public partial class numcash : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand accountLog = new SqlCommand("SELECT * FROM Num_of_cashback", conn);
            accountLog.CommandType = CommandType.Text;
            conn.Open();
            SqlDataReader reader = accountLog.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(reader);
            reader.Close();
            conn.Close();
            if (dt.Rows.Count == 0 || dt.Columns.Count == 0)
            {
                // If no data, display "Not Available"
                Label2.Text = "Not Available";
            }
            else
            {
                // Bind data to GridView and clear Label2
                shosho.DataSource = dt;
                shosho.DataBind();
                Label2.Text = "";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminPage.aspx");
        }
    }
}