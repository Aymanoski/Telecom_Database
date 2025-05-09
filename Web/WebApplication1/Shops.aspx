<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shops.aspx.cs" Inherits="WebApplication1.Shops" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shops Available</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 40%; /* Set container to 40% of the page width */
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

        .grid-container {
            margin-top: 20px;
            overflow-x: auto; /* Enable horizontal scroll if needed */
        }

        #Label1 {
            text-align: center;
            font-size: 20px;
            color: #17a2b8;
            font-weight: bold;
            margin-bottom: 20px;
            display: block;
        }

        #Label2 {
            color: #dc3545; /* Red for no data message */
            font-weight: bold;
            text-align: center;
            display: block;
            margin-top: 10px;
        }

        /* Button Styling */
        #Button1 {
            display: block;
            width: 100%;
            padding: 12px 20px;
            background-color: #007bff;
            color: white;
            font-size: 16px;
            font-weight: bold;
            text-align: center;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            margin-top: 20px;
            transition: background-color 0.3s, transform 0.2s ease;
        }

        /* Button Hover Effect */
        #Button1:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Shops Available</h1>
            <asp:Label ID="Label1" runat="server" Text="Shops Available"></asp:Label>
            <div class="grid-container">
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </div>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Return to Previous Page" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
