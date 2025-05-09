<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home Page.aspx.cs" Inherits="WebApplication1.Home_Page" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
    <style>
        body {
            background-image: url('Image/background2.jpeg'); /* Relative path to your image */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .container {
            text-align: center;
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .container h1 {
            margin-bottom: 20px;
            font-size: 24px;
            color: #333;
        }
        .container button {
            width: 150px;
            padding: 10px;
            margin: 10px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            color: white;
        }
        .btn-admin {
            background-color: #007bff; /* Blue for Admin button */
        }
        .btn-admin:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
        .btn-customer {
            background-color: #28a745; /* Green for Customer button */
        }
        .btn-customer:hover {
            background-color: #1e7e34; /* Darker green on hover */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Select User Type</h1>
            <!-- Redirect Admin to the Admin Login Page -->
            <button type="button" class="btn-admin" onclick="redirectToAdminLogin()">Admin</button>
            <!-- Redirect Customer to the Customer Login Page -->
            <button type="button" class="btn-customer" onclick="redirectToCustomerLogin()">Customer</button>
        </div>
    </form>

    <script>
        function redirectToAdminLogin() {
            // Redirect to Admin Login Page
            window.location.href = "adminLogin.aspx";  // Replace with your actual login page URL
        }

        function redirectToCustomerLogin() {
            // Redirect to Customer Action Page
            window.location.href = "CustomerAction.aspx";  // Replace with your actual customer action page URL
        }
    </script>
</body>
</html>
