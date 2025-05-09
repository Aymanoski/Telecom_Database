using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Runtime.Remoting.Messaging;

namespace WebApplication1
{
    public partial class SMSOFFERS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            string moboky = tala.Text;

            if (moboky.Length != 11)
            {
                hello.Text = "please enter a valid 11 number";
                lala.Visible = false;
                return;
            }
            lala.Visible = true;
            hello.Text = "";
            SqlCommand java = new SqlCommand("SELECT *  FROM dbo.Account_SMS_Offers(@mobile_num)", conn);
            java.CommandType = CommandType.Text;


            java.Parameters.AddWithValue("@mobile_num", moboky);
       


            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(java);
            DataTable dt = new DataTable();
            da.Fill(dt);


            lala.DataSource = dt;
            lala.DataBind();
            conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminPage.aspx");
        }
    }
}