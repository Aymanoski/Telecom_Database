using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class adminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void adminSign_Click(object sender, EventArgs e)
        {
           

            string adminUse = adminUser.Text;
            string adminPas = adminPass.Text;
            if (string.IsNullOrWhiteSpace(adminUse) || string.IsNullOrWhiteSpace(adminPas))
            {
                Label3.Text = "Please fill in all.";
                return;
            }

            if (adminUse=="123" && adminPas == "123")
            {
                Response.Redirect("adminPage.aspx");
            }
            else
            {
                Label3.Text = "Invalid Credintals";
            }
        }
    }
}