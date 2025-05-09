<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerAction.aspx.cs" Inherits="WebApplication1.CustomerAction" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Choose Action</title>
    <style>
        body {
            background-image: url('Image/background2.jpeg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }

        h1 {
            font-size: 2.5em;
            margin-top: 50px;
            color: white;
            text-align: center;
        }

        /* Styling for "Hello Viewer" label */
        .hello-viewer {
            font-size: 1.5em;
            color: white;
            margin-bottom: 20px;
            text-align: center;
        }

        /* Styling for Label (explicitly for visibility) */
        #Label1 {
            display: block;
            font-size: 1.5em;
            color: white;
            text-align: center;
            margin-top: 10px;
        }

        .button-container {
            text-align: center;
            margin-top: 20px;
        }

        /* Styling for Buttons */
        .button {
            display: inline-block;
            margin: 10px;
            padding: 15px 30px;
            font-size: 1.2em;
            background-color: #007BFF;
            color: white;
            text-decoration: none;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            width: 300px; /* Make all buttons have the same width */
        }

        /* Login Button with larger size and different color */
        .login-button {
            font-size: 1.5em;
            padding: 20px 40px;
            background-color: #28a745; /* Green color for login */
            width: 340px; /* Wider than the other buttons */
            margin-bottom: 20px;
        }

        /* Button hover effect */
        .button:hover {
            background-color: #0056b3;
        }

        /* Special Hover for Login Button */
        .login-button:hover {
            background-color: #218838; /* Darker green for hover effect */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Hello Viewer Message -->
            <div class="hello-viewer">
                
                <!-- Make Label visible outside the H2 -->
               
            </div>

            <!-- Welcome Title -->
            <h1>Welcome! Choose Your Action</h1>

            <!-- Button Container -->
            <div class="button-container">
                <!-- Login Button with Larger Size and Different Color -->
                <asp:Button ID="btnLogin" runat="server" CssClass="button login-button" Text="Login" OnClick="btnLogin_Click" />
                    <asp:Button ID="Button2" runat="server" CssClass="button login-button" Text="Return back" OnClick="btnLogin2_Click" />
                <!-- Other Buttons Below, Sized to Fit Smaller Width -->
                <asp:Button ID="Button1" runat="server" CssClass="button" Text="All Shops" OnClick="Button1_Click" />
                <asp:Button ID="btnViewServices" runat="server" CssClass="button" Text="View All Services" OnClick="btnViewServices_Click" />
            </div>
        </div>
    </form>
</body>
</html>
