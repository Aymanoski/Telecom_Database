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
    public partial class top10su : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnClick_submit(object sender, EventArgs e)
        {

            String connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            string x = mobn.Text;

            SqlCommand cmd = new SqlCommand("Top_Successful_Payments", conn);
            cmd.CommandType = CommandType.StoredProcedure;


            cmd.Parameters.AddWithValue("@mobile_num", x);

            conn.Open();

            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows && x.Length == 11)
            {
                lblError.Text = "";
                DataTable dt = new DataTable();
                dt.Load(reader);


                vouch.DataSource = dt;
                vouch.DataBind();
                lblError.Text = "";
                vouch.Visible = true;
            }
            else { lblError.Text = "invalid input try again";
                vouch.Visible = false;
            }
            reader.Close();
            conn.Close();


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Customer Web Page.aspx");
        }
    }
}