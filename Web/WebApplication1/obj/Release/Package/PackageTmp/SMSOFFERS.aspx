<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SMSOFFERS.aspx.cs" Inherits="WebApplication1.SMSOFFERS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="what mobile phone u need to show"></asp:Label>
            <br />
            <asp:TextBox ID="tala" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="SHOW" OnClick="Button1_Click" />
            <br />
            <asp:GridView ID="lala" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
