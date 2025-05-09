using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class extraamount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            string mobn = mob.Text;
            string pname = plan.Text;




            SqlCommand java = new SqlCommand("Select dbo.Extra_plan_amount(@mobile_num,@plan_name)", conn);



            java.Parameters.AddWithValue("@mobile_num", mobn);
            java.Parameters.AddWithValue("@plan_name", pname);

            conn.Open();
            object result = java.ExecuteScalar();
            if (result == null || mobn.Length != 11 || pname == "") { ss.Text = "invalid inputs try again"; }
            else { ss.Text = "extra amount is " + result; }
            conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Customer Web Page.aspx");
        }
    }
}