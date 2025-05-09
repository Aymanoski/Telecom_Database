<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminLogin.aspx.cs" Inherits="WebApplication1.adminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="please enter ur adminID and User"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="adminUserName"></asp:Label>
            <br />
            <asp:TextBox ID="adminUser" runat="server"></asp:TextBox>
            <br />
            adminPassword<br />
            <asp:TextBox ID="adminPass" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="adminSign" runat="server" Text="sign In" OnClick="adminSign_Click" />
        </div>
    </form>
</body>
</html>
