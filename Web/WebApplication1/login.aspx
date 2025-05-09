<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('Image/background.jpeg') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 400px;
            margin: 100px auto;
            background-color: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }

        h1 {
            text-align: center;
            color: #007bff;
            font-size: 24px;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            font-size: 14px;
            color: #333;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        .btn {
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
        }

        .btn:hover {
            background-color: #218838;
        }

        /* Return button style */
        .btn-return {
            width: 50%;
            padding: 8px;
            background-color: #f44336; /* Red color */
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 14px;
            margin: 10px auto;
            display: block;
        }

        .btn-return:hover {
            background-color: #d32f2f;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Customer Login</h1>

            <!-- Admin UserName Input -->
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Customer Username:" AssociatedControlID="adminUser"></asp:Label>
                <asp:TextBox ID="adminUser" runat="server"></asp:TextBox>
            </div>

            <!-- Admin Password Input -->
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Customer Password:" AssociatedControlID="adminPass"></asp:Label>
                <asp:TextBox ID="adminPass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            </div>

            <!-- Sign In Button -->
            <asp:Button ID="adminSign" runat="server" Text="Sign In" CssClass="btn" OnClick="adminSign_Click" />
            <br />
            
            <!-- Return to Previous Page Button -->
            <asp:Button ID="Button1" runat="server" Text="Return to Previous Page" CssClass="btn-return" OnClick="btnReturn_Click" />
        </div>
    </form>
</body>
</html>
