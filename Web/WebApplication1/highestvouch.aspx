<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="highestvouch.aspx.cs" Inherits="WebApplication1.highestvouch" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Voucher Details</title>
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
            max-width: 600px;
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

        .btn-submit, #Button2 {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            font-weight: bold;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-align: center;
            transition: background-color 0.3s;
        }

        .btn-submit {
            background-color: #007bff;
            color: white;
        }

        .btn-submit:hover {
            background-color: #0056b3;
        }

        #Button2 {
            background-color: #28a745;
            color: white;
            margin-top: 10px;
        }

        #Button2:hover {
            background-color: #218838;
        }

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

        .label-style {
            font-size: 14px;
            color: #555;
            margin-bottom: 10px;
            display: block;
        }

        .error-label {
            color: #ff0000;
            font-size: 14px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>Voucher Details</h2>

            <!-- Instruction Label -->
            <asp:Label runat="server" Text="Voucher ID with the highest value will be displayed below. Please enter your mobile number." CssClass="label-style"></asp:Label>

            <!-- Mobile Number Input -->
            <div class="form-group">
                <asp:TextBox ID="mobn" runat="server" CssClass="form-control" placeholder="Enter Mobile Number"></asp:TextBox>
            </div>

            <!-- Submit Button -->
            <div class="form-group">
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="btnClick_submit" CssClass="btn-submit" />
            </div>

            <!-- Error Message -->
            <asp:Label ID="lblError" runat="server" CssClass="error-label"></asp:Label>

            <!-- Grid to Display Voucher Details -->
            <div class="form-group">
                <asp:GridView ID="vouch" runat="server" CssClass="gridview-style"></asp:GridView>
            </div>

            <!-- Return to Home Page Button -->
            <asp:Button ID="Button2" runat="server" Text="Return to Home Page" OnClick="Button2_Click" />
        </div>
    </form>
</body>
</html>
