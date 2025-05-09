<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer Web Page.aspx.cs" Inherits="WebApplication1.Customer_Web_Page" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Web Page</title>
    <style>
        body {
            background-color: #f4f4f4;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            width: 90%;
            max-width: 1200px;
            margin: auto;
            text-align: center;
        }
        .title {
            font-size: 28px;
            margin-bottom: 20px;
            color: #333;
        }
        .grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }
        .box {
            padding: 20px;
            background-color: #000082; /* Dark purple background */
            color: white;
            text-align: center;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
            font-size: 16px;
            font-weight: bold;
        }
        .box:hover {
            background-color: #3a0066; /* Darker purple on hover */
            transform: translateY(-5px); /* Slight lift effect */
        }
        .box1 {
    padding: 20px;
    background-color: #ff00dc; /* Dark purple background */
    color: white;
    text-align: center;
    border-radius: 8px;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.2s ease;
    font-size: 16px;
    font-weight: bold;
}
.box1:hover {
    background-color: #ff0000; /* Darker purple on hover */
    transform: translateY(-5px); /* Slight lift effect */
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1 class="title">Hello Customer!</h1>
            <div class="grid">
                <!-- Each box represents a procedure -->
                <asp:Button runat="server" CssClass="box" Text="Consumption" OnClick="Consumption_Click" />
                <asp:Button runat="server" CssClass="box" Text="Unsubscribed Plans" OnClick="UnsubscribedPlans_Click" />
                <asp:Button runat="server" CssClass="box" Text="Usage Plan Current Month" OnClick="UsagePlanCurrentMonth_Click" />
                <asp:Button runat="server" CssClass="box" Text="Cashback Wallet Customer" OnClick="CashbackWalletCustomer_Click" />
                <asp:Button runat="server" CssClass="box" Text="Technical Support Tickets" OnClick="TicketAccountCustomer_Click" />
                <asp:Button runat="server" CssClass="box" Text="Highest Voucher" OnClick="HighestVoucher_Click" />
                <asp:Button runat="server" CssClass="box" Text="Remaining Plan Amount" OnClick="RemainingPlanAmount_Click" />
                <asp:Button runat="server" CssClass="box" Text="Extra Plan Amount" OnClick="ExtraPlanAmount_Click" />
                <asp:Button runat="server" CssClass="box" Text="Top Successful Payments" OnClick="TopSuccessfulPayments_Click" />
                <asp:Button runat="server" CssClass="box" Text="Subscribed Plans in 5 Months" OnClick="SubscribedPlans5Months_Click" />
                <asp:Button runat="server" CssClass="box" Text="Initiate Plan Payment" OnClick="InitiatePlanPayment_Click" />
                <asp:Button runat="server" CssClass="box" Text="Wallet Cashback Payment" OnClick="PaymentWalletCashback_Click" />
                <asp:Button runat="server" CssClass="box" Text="Balance Payment" OnClick="InitiateBalancePayment_Click" />
                <asp:Button runat="server" CssClass="box" Text="Redeem Voucher Points" OnClick="RedeemVoucherPoints_Click" />
                 <asp:Button runat="server" CssClass="box" Text="All Benefits" OnClick="AllBenefits_Click" />
            </div>
        </div>
        <asp:Button ID="Button1" runat="server" CssClass="box1" Text="Return to Home Page" OnClick="Button1_Click" />
    </form>
</body>
</html>

