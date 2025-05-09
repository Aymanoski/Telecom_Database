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
    public partial class ACCPAYPOI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminPage.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            string Mobilok = TextBox1.Text;

            if (Mobilok.Length != 11)
            {
                hello.Text = "please enter an 11 bit number";
                GridView1.Visible = false;  
                return;
            }
            GridView1.Visible = true;
            hello.Text = "";

            SqlCommand playa = new SqlCommand("Account_Payment_Points", conn);
            playa.CommandType = CommandType.StoredProcedure;


            playa.Parameters.AddWithValue("@mobile_num", Mobilok);



            conn.Open();
            SqlDataReader reader = playa.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(reader);
            reader.Close();
            conn.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();
            GridView1.HeaderRow.Cells[0].Text = "Payment Count";
            GridView1.HeaderRow.Cells[1].Text = "Total Points";
            conn.Close();
        }
    }
}