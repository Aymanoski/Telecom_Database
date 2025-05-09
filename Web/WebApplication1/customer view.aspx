<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customer_view.aspx.cs" Inherits="WebApplication1.customer_view" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Accounts</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e6f7ff;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 95%; /* Increase width to occupy table */
            margin: 50px auto;
            padding: 30px;
            background-color: #ffffff;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            border-radius: 12px;
        }
        h1, .label-header {
            text-align: center;
            color: #007bff;
            font-size: 24px;
            margin-bottom: 20px;
        }
        .grid-container {
            margin-top: 20px;
            overflow-x: auto; /* Enable horizontal scroll if needed */
        }
        #Label1 {
            font-size: 20px;
            color: #17a2b8;
            font-weight: bold;
            display: block;
            margin-bottom: 15px;
            text-align: center;
        }
        #Label2 {
            color: #dc3545; /* Red for error or no data message */
            font-weight: bold;
            margin-top: 10px;
            text-align: center;
        }
        .button-container {
            text-align: center;
            margin-top: 20px;
        }
        #Button1 {
            background-color: #28a745; /* Vibrant green */
            color: white;
            font-size: 18px;
            padding: 10px 20px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
        }
        #Button1:hover {
            background-color: #218838; /* Darker green on hover */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Customer Accounts</h1>
            <asp:Label ID="Label1" runat="server" Text="All Customer Profiles with Their Accounts"></asp:Label>
            <div class="grid-container">
                <asp:GridView ID="Accounts" runat="server" AutoGenerateColumns="true" 
                              CssClass="table table-bordered table-striped" />
            </div>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            <div class="button-container">
                <asp:Button ID="Button1" runat="server" Text="Return to Home Page" OnClick="Button1_Click" />
            </div>
        </div>
    </form>
</body>
</html>
