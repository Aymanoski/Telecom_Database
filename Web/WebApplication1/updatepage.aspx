<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updatepage.aspx.cs" Inherits="WebApplication1.updatepage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Earned Points</title>
    <style>
        /* Set the background color of the page to blue */
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

        .form-group button, .form-group input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        /* Add hover effect for the buttons */
        .form-group button:hover, .form-group input[type="submit"]:hover {
            background-color: #0056b3; /* Darker blue when hovered */
        }

        /* Add hover effect for the return button */
        #Button2 {
            background-color: #28a745; /* Green color for the return button */
            margin-top: 15px;
        }

        #Button2:hover {
            background-color: #218838; /* Darker green when hovered */
        }

        .result-label {
            text-align: center;
            margin-top: 20px;
            color: #007bff;
            font-size: 18px;
            font-weight: bold;
        }

        /* Style for labels to make them more readable */
        .form-group label, .result-label {
            font-size: 18px;
            font-weight: bold;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Update Earned Points</h1>

            <!-- Description label -->
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Update the total number of earned points"></asp:Label>
            </div>

            <!-- Input field for mobile number -->
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Insert the mobile number"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </div>

            <!-- Button to show points -->
            <div class="form-group">
                <asp:Button ID="Button1" runat="server" Text="Show" OnClick="Button1_Click" />
            </div>

            <!-- Result display -->
            <asp:Label ID="hello" runat="server" CssClass="result-label"></asp:Label>
        </div>

        <!-- Return to Home page button -->
        <div class="form-group">
            <asp:Button ID="Button2" runat="server" Text="Return to Home page" OnClick="Button2_Click" />
        </div>
    </form>
</body>
</html>
