<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="accpda.aspx.cs" Inherits="WebApplication1.accpda" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="what plan id u want"></asp:Label>
            <br />
            <asp:TextBox ID="mobo" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="what is ur subscription date u want in YYYY/MM/DD"></asp:Label>
            <br />
            <asp:TextBox ID="lolo" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="SUMBIT" OnClick="Button1_Click" />
            <br />
            <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            </asp:GridView>
            <br />
        </div>
    </form>
</body>
</html>
