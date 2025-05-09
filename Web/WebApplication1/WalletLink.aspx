<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WalletLink.aspx.cs" Inherits="WebApplication1.WalletLink" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Wallet Link</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }

        .container h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            color: #555;
        }

        .form-group input[type="text"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        .form-group button, .form-group input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .form-group button:hover {
            background-color: #0056b3;
        }

        .result-label {
            text-align: center;
            margin-top: 20px;
            font-size: 18px;
            font-weight: bold;
            color: #007bff;
        }

        .return-button {
            background-color: #28a745;
            margin-top: 15px;
        }

        .return-button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Wallet Link</h1>

            <!-- Mobile number input section -->
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Please enter a mobile number:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </div>

            <!-- Check button -->
            <div class="form-group">
                <asp:Button ID="Button1" runat="server" Text="Check" CssClass="check-button" OnClick="Button1_Click1" />
            </div>

            <!-- Result message display -->
            <asp:Label ID="Label3" runat="server" CssClass="result-label"></asp:Label>

            <!-- Return to home page button -->
            <div class="form-group">
                <asp:Button ID="Button2" runat="server" Text="Return to Home Page" CssClass="return-button" OnClick="Button2_Click1" />
            </div>
        </div>
    </form>
</body>
</html>
