<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="accpda.aspx.cs" Inherits="WebApplication1.accpda" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Accounts of a Specified Plan</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 40%;
            margin: 50px auto;
            padding: 30px;
            background-color: #ffffff;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            border-radius: 12px;
        }
        h1 {
            text-align: center;
            color: #007bff;
            font-size: 26px;
            margin-bottom: 20px;
        }
        .label-header {
            text-align: center;
            font-size: 20px;
            font-weight: bold;
            color: #17a2b8;
            margin-bottom: 10px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .grid-container {
            margin-top: 20px;
            overflow-x: auto;
        }
        #Label3 {
            text-align: center;
            font-size: 20px;
            color: #17a2b8;
            font-weight: bold;
            margin-bottom: 20px;
            display: block;
        }
        #Label1, #Label2 {
            font-size: 14px;
            font-weight: bold;
        }
        .form-control {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        #hello {
            color: #dc3545;
            font-weight: bold;
            text-align: center;
            display: block;
            margin-top: 10px;
        }
        .button-container {
            text-align: center;
            margin-top: 30px;
        }
        #Button1, #Button2 {
            background-color: #28a745;
            color: white;
            font-size: 18px;
            padding: 10px 25px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
        }
        #Button1:hover, #Button2:hover {
            background-color: #218838;
        }
        #GridView1 {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Accounts of a Specified Plan</h1>
            <asp:Label ID="Label3" runat="server" Text="Accounts of Specified Plan"></asp:Label>

            <!-- Plan ID Input -->
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="What plan ID do you want?" AssociatedControlID="mobo"></asp:Label>
                <asp:TextBox ID="mobo" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <!-- Subscription Date Input -->
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="What is your subscription date (MM/DD/YYYY)?" AssociatedControlID="lolo"></asp:Label>
                <asp:TextBox ID="lolo" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <!-- Submit Button -->
            <div class="button-container">
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            </div>

            <!-- Error or Success Message -->
            <asp:Label ID="hello" runat="server" Text=""></asp:Label>

            <!-- GridView for Displaying Data -->
            <div class="grid-container">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true" EmptyDataText="No results found." CssClass="table table-striped" Visible="false">
                </asp:GridView>
            </div>

            <!-- Return to Home Page Button -->
            <div class="button-container">
                <asp:Button ID="Button2" runat="server" Text="Return to Home Page" OnClick="Button2_Click" />
            </div>
        </div>
    </form>
</body>
</html>
