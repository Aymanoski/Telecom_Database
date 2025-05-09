using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection.Emit;

namespace WebApplication1
{
    public partial class tecktik : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            string nat = nid.Text;

            if (!(int.TryParse(nat, out _)))
            {
                lblError.Text = "Please enter a valid mumber format.";
                sos.Visible = false;
                return;
            }


            SqlCommand java = new SqlCommand("Ticket_Account_Customer", conn);
            java.CommandType = CommandType.StoredProcedure;


            java.Parameters.AddWithValue("@NID", nat);



            conn.Open();
            SqlDataReader reader = java.ExecuteReader();
            if (reader.HasRows && nid.Text != "")
            {
                DataTable dt = new DataTable();
                dt.Load(reader);



                sos.DataSource = dt;
                sos.DataBind();
                sos.HeaderRow.Cells[0].Text = "No of non resolved tickets";
                sos.Visible = true;
                lblError.Text = "";
            }
            else { lblError.Text = "invalid input"; }
            reader.Close();
            conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Customer Web Page.aspx");
        }
    }
}