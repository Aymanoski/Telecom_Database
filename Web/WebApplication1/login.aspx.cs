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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void adminSign_Click(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            SqlCommand accountLog = new SqlCommand("SELECT dbo.AccountLoginValidation(@mobile_num,@pass)", conn);
            accountLog.CommandType = CommandType.Text;

            string adminUse = adminUser.Text;
            string adminPas = adminPass.Text;
            if (string.IsNullOrWhiteSpace(adminUse) || string.IsNullOrWhiteSpace(adminPas))
            {
                Label3.Text = "Please fill in all.";
                return;
            }

            accountLog.Parameters.AddWithValue("@pass", adminPas);
            accountLog.Parameters.AddWithValue("@mobile_num", adminUse);

            conn.Open();
            object result = accountLog.ExecuteScalar();

            bool walletExists = (result != DBNull.Value) && Convert.ToBoolean(result);

            if (walletExists)
            {
                Response.Redirect("Customer Web Page.aspx");

            }
            else
            {
                Label3.Text = "Invalid Credintals.";
            }
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerAction.aspx");
        }
    }
}