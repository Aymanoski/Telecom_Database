<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminPage.aspx.cs" Inherits="WebApplication1.adminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="view All accounts along their profiles click on corsspoing button"></asp:Label>
            <asp:Button ID="Button1" runat="server" Height="20px" OnClick="Button1_Click" Text="Accounts view" Width="174px" />
            <br />
            <asp:Label ID="Label2" runat="server" Text="view list of physical stores and their corssponding redeemed voucher"></asp:Label>
            <asp:Button ID="Button2" runat="server" Text="PhysicalVoucher" Height="24px" OnClick="Button2_Click" Width="187px" />
            <br />
            <asp:Label ID="Label3" runat="server" Text="details of resolved tickets"></asp:Label>
            <asp:Button ID="Button3" runat="server" Text="resolved tickets" OnClick="Button3_Click" />
            <br />
            <asp:Label ID="Label4" runat="server" Text="view All customer accounts with their corssponding plans"></asp:Label>
            <asp:Button ID="Button4" runat="server" Text="accountPlans" Height="27px" OnClick="Button4_Click" />
            <br />
            <asp:Label ID="Label5" runat="server" Text="to view accounts subscribed to a certain plan and certain date click on this link"></asp:Label>
            <asp:Button ID="Button5" runat="server" Text="AccPLANDATE" OnClick="Button5_Click" />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Show the total usage of a specific account for all plans froma specific date"></asp:Label>
            <asp:Button ID="Button6" runat="server" Text="TotalUsage" OnClick="Button6_Click" />
            <br />
            <asp:Label ID="Label7" runat="server" Text="to delete benefits for a specific account for a specific plan click on nect button"></asp:Label>
            <asp:Button ID="Button7" runat="server" Text="delete" OnClick="Button7_Click" />
            <br />
            <asp:Label ID="Label8" runat="server" Text="to show all SMS offers for a certain account "></asp:Label>
            <asp:Button ID="Button8" runat="server" Text="SMSOFFERS" OnClick="Button8_Click" />
            <br />
        </div>
    </form>
</body>
</html>
