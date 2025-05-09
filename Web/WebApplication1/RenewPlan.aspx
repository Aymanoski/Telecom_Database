<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RenewPlan.aspx.cs" Inherits="WebApplication1.RenewPlan" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Renew Plan</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7f6;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        
        .form-container {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        .form-container h2 {
            text-align: center;
            color: #333;
        }

        .form-container label {
            font-weight: bold;
            color: #555;
            margin-bottom: 5px;
            display: block;
        }

        .form-container input[type="text"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 14px;
            box-sizing: border-box;
        }

        .form-container input[type="text"]:focus {
            border-color: #4CAF50;
            outline: none;
        }

        .form-container .radio-list {
            margin-bottom: 15px;
        }

        .form-container .radio-list label {
            font-weight: normal;
            display: inline;
            margin-right: 20px;
        }

        .form-container .button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
        }

        .form-container .button:hover {
            background-color: #45a049;
        }

        .form-container .message {
            color: #4CAF50;
            font-size: 14px;
            text-align: center;
            margin-top: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>Renew Your Plan</h2>

            <asp:Label ID="Label1" runat="server" Text="Enter Mobile"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

            <asp:Label ID="Label2" runat="server" Text="Enter Amount"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

            <asp:Label ID="Label3" runat="server" Text="Enter Plan ID"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

            <asp:Label ID="Label4" runat="server" Text="Choose a Payment Method"></asp:Label>
            <div class="radio-list">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem Text="Cash" Value="cash" />
                    <asp:ListItem Text="Credit" Value="credit" />
                </asp:RadioButtonList>
            </div>

            <asp:Button ID="Button1" runat="server" Text="Renew" OnClick="Button2click" CssClass="button" />

            <br />
            <br />
            <br />

            <asp:Label ID="Label5" runat="server" CssClass="message" Text=""></asp:Label>
            <br />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Return to Home Page" OnClick="Button2_Click" CssClass="button" />
        </div>
    </form>
</body>
</html>
