<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consumption.aspx.cs" Inherits="WebApplication1.Consumption" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Consumption Page</title>
    <style>
        body {
            background-color: lightblue;
            font-family: Arial, sans-serif;
        }

        form {
            text-align: center;
            margin-top: 50px;
        }

        h1 {
            font-size: 2em;
            margin-bottom: 20px;
        }

        label {
            font-size: 1.2em;
        }

        input[type="text"], input[type="submit"], .aspNet-Button {
            font-size: 1.1em;
            width: 300px;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .aspNet-Button {
            background-color: #007BFF;
            color: white;
            cursor: pointer;
        }

        .aspNet-Button:hover {
            background-color: #0056b3;
        }

        .grid-view {
            margin-top: 20px;
            width: 80%;
            margin-left: auto;
            margin-right: auto;
        }

        /* Style for the Return to Home Page button */
        #Button1 {
            background-color: #28a745;
            color: white;
            font-size: 1.1em;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 300px;
            margin-top: 20px;
        }

        #Button1:hover {
            background-color: #218838;
        }

        #Button1:active {
            background-color: #1e7e34;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Consumption Report</h1>

            <!-- Plan Name -->
            <asp:Label ID="lblPlanName" runat="server" Text="Plan Name: " AssociatedControlID="txtPlanName"></asp:Label>
            <br />
            <asp:TextBox ID="txtPlanName" runat="server" Placeholder="Enter plan name"></asp:TextBox>
            <br />

            <!-- Start Date -->
            <asp:Label ID="lblStartDate" runat="server" Text="Start Date: " AssociatedControlID="txtStartDate"></asp:Label>
            <br />
            <asp:TextBox ID="txtStartDate" runat="server" Placeholder="YYYY-MM-DD"></asp:TextBox>
            <br />

            <!-- End Date -->
            <asp:Label ID="lblEndDate" runat="server" Text="End Date: " AssociatedControlID="txtEndDate"></asp:Label>
            <br />
            <asp:TextBox ID="txtEndDate" runat="server" Placeholder="YYYY-MM-DD"></asp:TextBox>
            <br />

            <!-- Submit Button -->
            <asp:Button ID="btnSubmit" runat="server" CssClass="aspNet-Button" Text="Get Consumption" OnClick="btnSubmit_Click" />
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br />

            <!-- Grid to Display Results -->
            <asp:GridView ID="gvConsumption" runat="server" CssClass="grid-view" AutoGenerateColumns="True" />
            
            <!-- Return to Home Page Button -->
            <asp:Button ID="Button1" runat="server" CssClass="home-button" Text="Return to Home Page" OnClick="Button1_Click1" />
            <br />
        </div>
    </form>
</body>
</html>
