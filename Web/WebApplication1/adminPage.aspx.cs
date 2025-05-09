using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class adminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("customer view.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("physicalVoucher.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("resolved.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("account plans.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("accpda.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("totalusage.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("DeletePage.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("SMSOFFERS.aspx");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("Wallet.aspx");
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Redirect("eshopvoucher.aspx");
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Response.Redirect("paymenttrans.aspx");
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            Response.Redirect("numcash.aspx");

        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            Response.Redirect("ACCPAYPOI.aspx");
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            Response.Redirect("CASHWALL.aspx");
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            Response.Redirect("avertrans.aspx");
        }

        protected void Button16_Click(object sender, EventArgs e)
        {
            Response.Redirect("WalletLink.aspx");
        }

        protected void Button17_Click(object sender, EventArgs e)
        {
            Response.Redirect("updatepage.aspx");
        }

        protected void Button18_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home Page.aspx");
        }
    }
}