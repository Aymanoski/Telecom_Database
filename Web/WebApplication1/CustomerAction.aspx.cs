using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class CustomerAction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Event handler for the "View All Services" button
        protected void btnViewServices_Click(object sender, EventArgs e)
        {
            // Redirect to the "View Services" page
            Response.Redirect("DisplayAllServices.aspx");
        }

        // Event handler for the "Login" button
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Redirect to the "Login" page
            Response.Redirect("login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Shops.aspx");
        }

        protected void btnLogin2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home Page.aspx");
        }
    }
}