<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminPage.aspx.cs" Inherits="WebApplication1.adminPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page</title>
    <style>
        html, body {
            height: 1390px;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: white;
        }

        body {
            display: flex;
            justify-content: center;
            align-items: center;
            background-image: url('Image/kinga.jpg');
            background-size: cover;
            background-attachment: fixed;
            background-position: center;
        }

        .container {
            display: flex;
            align-items: flex-start;
            gap: 20px;
            width: 100%;
            max-width: 1400px; /* Increase max-width to fit four columns */
            padding: 20px;
            height: 1382px;
        }

        /* Style for the Welcome Admin section (move it to the left) */
        #welcomeAdmin {
            font-size: 24px;
            font-weight: bold;
            color: white;
            background-color: #ff6347; /* Background color for the Welcome Admin */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 250px;
            text-align: center;
            margin-right: 20px; /* Move the "Welcome Admin" section to the left */
        }

        form {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: center;
            max-width: 1200px;
            width: 100%;
            height: 996px;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        label {
            display: block;
            font-size: 18px;
            font-weight: bold;
            color: #ff6347;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
            margin-bottom: 15px;
            letter-spacing: 1px;
            line-height: 1.5;
            text-align: left;
            width: 100%;
        }

        button, input[type="submit"], .aspButton {
            background-color: #ff6347;
            color: white;
            border: none;
            padding: 12px 25px;
            font-size: 16px;
            font-weight: bold;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            margin-bottom: 15px;
            transition: background-color 0.3s ease, transform 0.1s ease;
            box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16);
        }

        button:hover, input[type="submit"]:hover, .aspButton:hover {
            background-color: #ff4500;
            transform: translateY(-2px);
        }

        button:focus, input[type="submit"]:focus, .aspButton:focus {
            outline: none;
        }

        /* Adjust the layout to four columns */
        .button-container {
            display: flex;
            flex-direction: column;
            gap: 20px;
            width: 23%;
            height: 681px;
        }

        .button-container:nth-child(2) {
            margin-left: 20px;
        }

        .button-container:nth-child(3) {
            margin-left: 20px;
        }

        .button-container:nth-child(4) {
            margin-left: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div id="welcomeAdmin">Welcome Admin</div>

        <form id="form1" runat="server">
            <!-- First column of buttons -->
            <div class="button-container">
                <asp:Label ID="Label1" runat="server" Text="View all accounts along with their profiles:"></asp:Label>
                <asp:Button ID="Button1" runat="server" Text="Accounts View" OnClick="Button1_Click" CssClass="aspButton" />

                <asp:Label ID="Label2" runat="server" Text="View list of physical stores and their redeemed vouchers:"></asp:Label>
                <asp:Button ID="Button2" runat="server" Text="Physical store" OnClick="Button2_Click" CssClass="aspButton" />

                <asp:Label ID="Label3" runat="server" Text="Details of resolved tickets:"></asp:Label>
                <asp:Button ID="Button3" runat="server" Text="Resolved Tickets" OnClick="Button3_Click" CssClass="aspButton" />

                <asp:Label ID="Label4" runat="server" Text="View all customer accounts with their corresponding plans:"></asp:Label>
                <asp:Button ID="Button4" runat="server" Text="Account Plans" OnClick="Button4_Click" CssClass="aspButton" />
                <asp:Label ID="Label16" runat="server" Text=" Show if the input mobile Number is linked to a wallet, or not."></asp:Label>
                <asp:Button ID="Button16" runat="server" Text="SHOW" OnClick="Button16_Click" />
            </div>

            <!-- Second column of buttons -->
            <div class="button-container">
                <asp:Label ID="Label5" runat="server" Text="View accounts subscribed to a certain plan and date:"></asp:Label>
                <asp:Button ID="Button5" runat="server" Text="Acc PLAN DATE" OnClick="Button5_Click" CssClass="aspButton" />

                <asp:Label ID="Label6" runat="server" Text="Show the total usage of a specific account for all plans from a specific date:"></asp:Label>
                <asp:Button ID="Button6" runat="server" Text="Total Usage" OnClick="Button6_Click" CssClass="aspButton" />

                <asp:Label ID="Label7" runat="server" Text="Delete benefits for a specific account and plan:"></asp:Label>
                <asp:Button ID="Button7" runat="server" Text="Delete" OnClick="Button7_Click" CssClass="aspButton" />

                <asp:Label ID="Label8" runat="server" Text="Show all SMS offers for a specific account:"></asp:Label>
                <asp:Button ID="Button8" runat="server" Text="SMS Offers" OnClick="Button8_Click" CssClass="aspButton" />
            </div>

            <!-- Third column of buttons -->
            <div class="button-container">
                <asp:Label ID="Label9" runat="server" Text="View details of all wallets along with their customer names"></asp:Label>
                <asp:Button ID="Button9" runat="server" Text="View" OnClick="Button9_Click" />

                <asp:Label ID="Label10" runat="server" Text="View the list of all E-shops along with their redeemed voucher’s ids and values."></asp:Label>
                <asp:Button ID="Button10" runat="server" Text="View" OnClick="Button10_Click" />

                <asp:Label ID="Label11" runat="server" Text="View all payments’ transaction details along with their initiated Accounts."></asp:Label>
                <asp:Button ID="Button11" runat="server" Text="View" OnClick="Button11_Click" />

                <asp:Label ID="Label12" runat="server" Text="View the total number of cashback transactions per each wallet ID"></asp:Label>
                <asp:Button ID="Button12" runat="server" Text="view" OnClick="Button12_Click" />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Button ID="Button18" runat="server" Text="Return to Home page" OnClick="Button18_Click" />
            </div>

            <!-- Fourth column of buttons (Including Button13 and Button14) -->
            <div class="button-container">
                <asp:Label ID="Label13" runat="server" Text="Show the number of accepted payment transactions initiated by the input account during the last year along with the total amount of earned points."></asp:Label>
                <asp:Button ID="Button13" runat="server" Text="SHOW" OnClick="Button13_Click" />

                <asp:Label ID="Label14" runat="server" Text="Show the amount of cashback returned on the input wallet id based on a certain input plan id."></asp:Label>
                <asp:Button ID="Button14" runat="server" Text="SHOW" OnClick="Button14_Click" />
                <asp:Label ID="Label15" runat="server" Text="Show the average of the sent transaction amounts from a wallet id within
a certain input duration"></asp:Label>
                <asp:Button ID="Button15" runat="server" Text="Show" OnClick="Button15_Click" />
                <asp:Label ID="Label17" runat="server" Text=" Update the total number of earned points for a soecific number"></asp:Label>
                <asp:Button ID="Button17" runat="server" Text="Update" OnClick="Button17_Click" />
            </div>
        </form>
    </div>
</body>
</html>s
