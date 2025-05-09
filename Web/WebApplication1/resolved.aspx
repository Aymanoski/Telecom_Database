<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="resolved.aspx.cs" Inherits="WebApplication1.resolved" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Resolved Tickets</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 40%; /* Set to 40% of the page width (60% smaller) */
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
        .button-container {
            text-align: center;
            margin-top: 30px;
        }
        #Button1 {
            background-color: #28a745; /* Vibrant green */
            color: white;
            font-size: 18px;
            padding: 10px 25px;
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
            <h1>Resolved Tickets</h1>
            <asp:Label ID="Label1" runat="server" Text="Resolved Tickets"></asp:Label>
            <div class="grid-container">
                <asp:GridView ID="res" runat="server" AutoGenerateColumns="true" 
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
