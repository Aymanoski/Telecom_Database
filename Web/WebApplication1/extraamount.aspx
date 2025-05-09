<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="extraamount.aspx.cs" Inherits="WebApplication1.extraamount" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Submit Mobile and Plan</title>
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
            max-width: 400px;
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
        }

        #Button2:hover {
            background-color: #218838;
        }

        .label-success {
            color: green;
            font-weight: bold;
            text-align: center;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>Extra Amount</h2>

            <!-- Success Label -->
            <div class="form-group">
                <asp:Label ID="ss" runat="server" CssClass="label-success"></asp:Label>
            </div>

            <!-- Mobile Number Input -->
            <div class="form-group">
                <asp:TextBox ID="mob" runat="server" CssClass="form-control" placeholder="Enter mobile number"></asp:TextBox>
            </div>

            <!-- Plan Name Input -->
            <div class="form-group">
                <asp:TextBox ID="plan" runat="server" CssClass="form-control" placeholder="Enter plan name"></asp:TextBox>
            </div>

            <!-- Submit Button -->
            <div class="form-group">
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="btn-submit" />
            </div>

            <!-- Return to Home Button -->
            <div class="form-group">
                <asp:Button ID="Button2" runat="server" Text="Return to Home Page" OnClick="Button2_Click" />
            </div>
        </div>
    </form>
</body>
</html>
