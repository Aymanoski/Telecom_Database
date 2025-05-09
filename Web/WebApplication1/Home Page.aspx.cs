using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Home_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Redirect to Admin Login Page
        protected void redirectToAdminLogin(object sender, EventArgs e)
        {
            Response.Redirect("Login Page.aspx");
        }

        // Redirect to Customer Login Page
        protected void redirectToCustomerLogin(object sender, EventArgs e)
        {
            Response.Redirect("CustomerAction.aspx");
        }
    }
}