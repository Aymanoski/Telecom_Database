<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="avertrans.aspx.cs" Inherits="WebApplication1.avertrans" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Average Transaction</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
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
            color: #555;
            margin-bottom: 5px;
        }

        .form-group input[type="text"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        .form-group button {
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
            color: #007bff;
            font-size: 18px;
            font-weight: bold;
        }

        .home-button {
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
        }

        .home-button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Average Transaction</h1>
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Enter the wallet ID" AssociatedControlID="TextBox1"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Enter start date in MM/DD/YYYY" AssociatedControlID="TextBox2"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Enter end date in MM/DD/YYYY" AssociatedControlID="TextBox3"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Button ID="Button1" runat="server" Text="Show" OnClick="Button1_Click" CssClass="form-control" />
            </div>

            <asp:Label ID="hello" runat="server" CssClass="result-label"></asp:Label>
            
            <div class="form-group">
                <asp:Button ID="Button2" runat="server" Text="Return to Home Page" OnClick="Button2_Click" CssClass="home-button" />
            </div>
        </div>
    </form>
</body>
</html>
