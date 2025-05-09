using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Customer_Web_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Initialization logic can be added here if needed
        }


        protected void Consumption_Click(object sender, EventArgs e)
        {
            Response.Redirect("Consumption.aspx");
        }

        protected void UnsubscribedPlans_Click(object sender, EventArgs e)
        {
            Response.Redirect("Unsubscribed.aspx");
        }

        protected void UsagePlanCurrentMonth_Click(object sender, EventArgs e)
        {
            Response.Redirect("UsagePlanMonth.aspx");
        }

        protected void CashbackWalletCustomer_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cashback.aspx");
        }

        protected void TicketAccountCustomer_Click(object sender, EventArgs e)
        {
            Response.Redirect("tecktik.aspx");
        }

        protected void HighestVoucher_Click(object sender, EventArgs e)
        {
            Response.Redirect("highestvouch.aspx");
        }

        protected void RemainingPlanAmount_Click(object sender, EventArgs e)
        {
            Response.Redirect("remamount.aspx");
        }

        protected void ExtraPlanAmount_Click(object sender, EventArgs e)
        {
            Response.Redirect("extraamount.aspx");
        }

        protected void TopSuccessfulPayments_Click(object sender, EventArgs e)
        {
            Response.Redirect("top10su.aspx");
        }

        protected void SubscribedPlans5Months_Click(object sender, EventArgs e)
        {
            Response.Redirect("allServicePlans.aspx");
        }

        protected void InitiatePlanPayment_Click(object sender, EventArgs e)
        {
            Response.Redirect("RenewPlan.aspx");
        }

        protected void PaymentWalletCashback_Click(object sender, EventArgs e)
        {
            Response.Redirect("anbarandfriends.aspx");
        }

        protected void InitiateBalancePayment_Click(object sender, EventArgs e)
        {
            Response.Redirect("Paypay.aspx");
        }

        protected void RedeemVoucherPoints_Click(object sender, EventArgs e)
        {
            Response.Redirect("redeem.aspx");
        }
        
            protected void AllBenefits_Click(object sender, EventArgs e)
        {
            Response.Redirect("Benefits.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home Page.aspx");
        }
    }
}