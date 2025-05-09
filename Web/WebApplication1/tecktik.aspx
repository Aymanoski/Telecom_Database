<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tecktik.aspx.cs" Inherits="WebApplication1.tecktik" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Submit Details</title>
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

        .form-container {
            background-color: #ffffff;
            padding: 20px 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .btn-submit {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            background-color: #007bff;
            color: white;
            font-weight: bold;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-align: center;
            transition: background-color 0.3s;
        }

        .btn-submit:hover {
            background-color: #0056b3;
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

        .error-label {
            color: #ff0000;
            font-size: 14px;
        }

        /* Return to Home Page Button Styling */
        #Button2 {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            background-color: #28a745;
            color: white;
            font-weight: bold;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-align: center;
            transition: background-color 0.3s;
        }

        #Button2:hover {
            background-color: #218838;
        }

        #Button2:active {
            background-color: #1e7e34;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>No of Non-resolved Tickets</h2>

            <div class="form-group">
                <asp:Label ID="lblError" runat="server" CssClass="error-label"></asp:Label>
            </div>

            <div class="form-group">
                <asp:TextBox ID="nid" runat="server" CssClass="form-control" placeholder="Enter NID"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="btn-submit" />
            </div>

            <div class="form-group">
                <asp:GridView ID="sos" runat="server" CssClass="gridview-style"></asp:GridView>
            </div>

            <!-- Return to Home Page Button -->
            <div class="form-group">
                <asp:Button ID="Button2" runat="server" Text="Return to Home Page" OnClick="Button2_Click" />
            </div>
        </div>
    </form>
</body>
</html>
