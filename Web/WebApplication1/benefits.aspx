<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="benefits.aspx.cs" Inherits="WebApplication1.benefits" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f2f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .gridview-container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 800px;
        }

        .gridview-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        /* GridView Styling */
        .gridview-style {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .gridview-style th, .gridview-style td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        .gridview-style th {
            background-color: #f8f8f8;
            font-weight: bold;
        }

        /* Label Styling */
        .label-style {
            font-size: 24px;
            font-weight: bold;
            color: #4CAF50; /* Green color */
            text-align: center;
            margin-bottom: 20px;
            display: block;
        }

        /* Button Styling */
        .button-style {
            display: inline-block;
            background-color: #4CAF50; /* Green color */
            color: white;
            font-size: 16px;
            padding: 10px 20px;
            text-align: center;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            text-decoration: none;
            margin-top: 20px;
            transition: background-color 0.3s ease;
        }

        .button-style:hover {
            background-color: #45a049; /* Darker green on hover */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="gridview-container">
                <!-- Apply the custom style class to the Label -->
                <asp:Label ID="Label1" runat="server" Text="Benefits" CssClass="label-style"></asp:Label>
                <asp:GridView ID="sasa" runat="server" CssClass="gridview-style"></asp:GridView>
                <br />
                <br />
                <!-- Apply the custom button style -->
                <asp:Button ID="Button1" runat="server" Text="Return to Home Page" OnClick="Button1_Click" CssClass="button-style" />
            </div>
        </div>
    </form>
</body>
</html>
