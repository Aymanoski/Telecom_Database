<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="redeem.aspx.cs" Inherits="WebApplication1.redeem" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Redeem Voucher</title>
    <style>
        body {
            background-image: url('Images/Background.jpeg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }

        h1 {
            font-size: 2.5em;
            color: white;
            text-align: center;
            margin-bottom: 20px;
        }

        p {
            font-size: 1.2em;
            color: white;
            text-align: center;
        }

        .form-container {
            background-color: rgba(0, 0, 0, 0.7); /* Transparent background */
            padding: 30px;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0px 0px 10px 2px rgba(0, 0, 0, 0.5);
        }

        .form-container p {
            margin: 15px 0;
        }

        /* TextBox Styling */
        input[type="text"], .aspNetDisabled {
            padding: 10px;
            font-size: 1em;
            width: 100%;
            max-width: 300px;
            border: 1px solid #ccc;
            border-radius: 5px;
            outline: none;
        }

        input[type="text"]:focus {
            border-color: #007BFF;
        }

        /* Button Styling */
        .button {
            display: inline-block;
            padding: 10px 30px;
            font-size: 1.2em;
            background-color: #007BFF;
            color: white;
            text-decoration: none;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            margin-top: 15px;
            width: 340px; /* Same size for consistency */
        }

        .button:hover {
            background-color: #0056b3;
        }

        /* Return Button with a different color */
        .return-button {
            background-color: #28a745; /* Green color */
        }

        .return-button:hover {
            background-color: #218838; /* Darker green */
        }

        /* Label Styling */
        .message-label {
            font-size: 1.2em;
            color: red;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <!-- Page Title -->
            <h1>Redemption Page</h1>
            <p>Red_Redeem_Redemption</p>

            <!-- Mobile Number Input -->
            <p>
                <asp:TextBox ID="mobilenumber" runat="server" Placeholder="Enter Mobile Number"></asp:TextBox>
            </p>

            <!-- Voucher Input -->
            <p>
                <asp:TextBox ID="voucher" runat="server" Placeholder="Enter Voucher ID"></asp:TextBox>
            </p>

            <!-- Redeem Button -->
            <p>
                <asp:Button ID="redeemButton" runat="server" CssClass="button" Text="Redeem" OnClick="redeem1" />
            </p>

            <!-- Redemption Message -->
            <asp:Label ID="redemptionMessage" runat="server" CssClass="message-label" Text=""></asp:Label>

            <!-- Return to Home Page Button -->
            <p>
                <asp:Button ID="Button1" runat="server" CssClass="button return-button" Text="Return to Home Page" OnClick="Button1_Click" />
            </p>
        </div>
    </form>
</body>
</html>
