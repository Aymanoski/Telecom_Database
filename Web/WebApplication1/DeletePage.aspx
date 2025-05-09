<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeletePage.aspx.cs" Inherits="WebApplication1.DeletePage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Delete Benefits</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #007bff; /* Blue background */
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
            background-color: #0056b3; /* Darker blue when hovered */
        }

        .form-group .result-label {
            font-size: 18px;
            font-weight: bold;
            text-align: center;
            margin-top: 20px;
            color: #007bff;
        }

        /* Button styling for return button */
        #Button2 {
            background-color: #28a745; /* Green color for return button */
            margin-top: 15px;
        }

        #Button2:hover {
            background-color: #218838; /* Darker green when hovered */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Delete Benefits</h1>

            <!-- Input field for mobile number -->
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Enter the mobile number you want to delete from" CssClass="result-label"></asp:Label>
                <asp:TextBox ID="toto1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <!-- Input field for plan ID -->
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Plan ID" CssClass="result-label"></asp:Label>
                <asp:TextBox ID="toto2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <!-- Button to delete -->
            <div class="form-group">
                <asp:Button ID="Button1" runat="server" Text="Delete" OnClick="Button1_Click" />
            </div>

            <!-- Result display label -->
            <asp:Label ID="Label4" runat="server" CssClass="result-label"></asp:Label>

            <!-- Return to Home page button -->
            <div class="form-group">
                <asp:Button ID="Button2" runat="server" Text="Return to Home page" OnClick="Button2_Click" />
            </div>
        </div>
    </form>
</body>
</html>
