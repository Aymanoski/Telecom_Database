<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="top10su.aspx.cs" Inherits="WebApplication1.top10su" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Top 10 Payment Details</title>
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
            overflow-x: auto;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        .form-container .form-group {
            margin-bottom: 20px;
        }

        .form-container .form-control {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .form-container .btn-submit {
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

        .form-container .btn-submit:hover {
            background-color: #0056b3;
        }

        .form-container .gridview-style {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .form-container .gridview-style th, .form-container .gridview-style td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        .form-container .gridview-style th {
            background-color: #f8f8f8;
            font-weight: bold;
        }

        .form-container .label-style {
            font-size: 14px;
            color: #555;
            margin-bottom: 10px;
            display: block;
        }

        .form-container .error-label {
            color: #ff0000;
            font-size: 14px;
        }

        /* New style for Return to Home button */
        .form-container .btn-return {
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
            margin-top: 10px;
        }

        .form-container .btn-return:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="form-container">
                <h2>Top 10 Payment Details</h2>
                <asp:Label runat="server" Text="Top 10 successful payments will appear below" CssClass="label-style"></asp:Label>
                
                <div class="form-group">
                    <asp:TextBox ID="mobn" runat="server" CssClass="form-control" placeholder="Enter Mobile Number"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="btnClick_submit" CssClass="btn-submit" />
                </div>

                <asp:Label ID="lblError" runat="server" CssClass="error-label"></asp:Label>

                <div class="form-group">
                    <asp:GridView ID="vouch" runat="server" CssClass="gridview-style"></asp:GridView>
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="Return to Home Page" CssClass="btn-return" OnClick="Button2_Click" />
                    <br />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
