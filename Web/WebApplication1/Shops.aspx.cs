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
    public partial class Shops : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {
            String connstR = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            SqlConnection conn = new SqlConnection(connstR);


            SqlCommand shopss = new SqlCommand("Select * FROM allShops", conn);
            shopss.CommandType = System.Data.CommandType.Text;
            conn.Open();
            SqlDataReader reader = shopss.ExecuteReader();
            DataTable dataTable = new DataTable();
            dataTable.Load(reader);
            reader.Close();
            conn.Close();
            GridView1.DataSource = dataTable;
            GridView1.DataBind();



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerAction.aspx");
        }
    }
}