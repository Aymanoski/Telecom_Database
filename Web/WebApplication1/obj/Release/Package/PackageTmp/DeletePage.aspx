<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeletePage.aspx.cs" Inherits="WebApplication1.DeletePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="enter the mobile number u wanna delete from"></asp:Label>
            <br />
            <asp:TextBox ID="toto1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="plan name"></asp:Label>
            <br />
            <asp:TextBox ID="toto2" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Delete" OnClick="Button1_Click" />
            <br />
            <asp:GridView ID="koko" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
