<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="allServicePlans.aspx.cs" Inherits="WebApplication1.allServicePlans" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Service Plans</title>
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
        .input-container {
            margin-top: 20px;
            text-align: center;
        }
        #Label1 {
            font-size: 20px;
            color: #17a2b8;
            font-weight: bold;
            display: block;
            margin-bottom: 10px;
        }
        #TextBox1 {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 8px;
        }
        #Button2 {
            background-color: #28a745;
            color: white;
            font-size: 18px;
            padding: 10px 25px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
        }
        #Button2:hover {
            background-color: #218838; /* Darker green on hover */
        }
        .grid-container {
            margin-top: 20px;
            overflow-x: auto; /* Enable horizontal scroll if needed */
        }
        #Label2 {
            color: #dc3545; /* Red for no data message */
            font-weight: bold;
            text-align: center;
            display: block;
            margin-top: 10px;
        }
        #Button3 {
            background-color: #007bff; /* Blue for home button */
            color: white;
            font-size: 18px;
            padding: 12px 30px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            margin-top: 20px;
            display: block;
            width: 100%;
        }
        #Button3:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Enter Mobile for Service Plans</h1>
            <div class="input-container">
                <asp:Label ID="Label1" runat="server" Text="Enter mobile"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" Text="Login" OnClick="Button1" />
            </div>
            <div class="grid-container">
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </div>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            <br />
            <asp:Button ID="Button3" runat="server" Text="Return to Home Page" OnClick="Button3_Click" />
        </div>
    </form>
</body>
</html>
