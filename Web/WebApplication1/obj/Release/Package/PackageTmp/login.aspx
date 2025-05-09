<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 334px">
            please login using your username and password<br />
            username<br />
            <asp:TextBox ID="username" runat="server" ></asp:TextBox>
            <br />
            pass<br />
            <asp:TextBox ID="pass" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="loginy" runat="server" OnClick="logy" Text="login" />
        </div>
    </form>
</body>
</html>
