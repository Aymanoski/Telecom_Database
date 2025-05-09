<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="totalusage.aspx.cs" Inherits="WebApplication1.totalusage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="please enter the mobile number u wanna check on"></asp:Label>
            <br />
            <asp:TextBox ID="texty1" runat="server"></asp:TextBox>
            <br />
            please enter the from date in DD/MM/YYYY<br />
            <asp:TextBox ID="texty2" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="SHOW" OnClick="Button1_Click" />
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <br />
        </div>
    </form>
</body>
</html>
