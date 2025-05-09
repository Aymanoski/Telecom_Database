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
    public partial class CashBack : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string nationalID = txtNationalID.Text.Trim();

            if (string.IsNullOrEmpty(nationalID))
            {
                Label1.Text = "Please fill out the form";
                gvCashbackWallet.Visible = false;   
                return;
            }
            if (!(int.TryParse(nationalID, out _)))
            {
                Label1.Text = "Please enter a valid mumber format.";
                gvCashbackWallet.Visible = false;
                return;
            }
            Label1.Text = "";
            gvCashbackWallet.Visible = true;
            // Connection string (update with your database details)
            string connectionString = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM [Cashback_Wallet_Customer] (@NID)", conn))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@NID", nationalID);

                    try
                    {
                        conn.Open();
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);

                        gvCashbackWallet.DataSource = dt;
                        gvCashbackWallet.DataBind();
                    }
                    catch (Exception ex)
                    {
                        // Handle errors (e.g., show an error message)
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Customer Web Page.aspx");
        }
    }
}