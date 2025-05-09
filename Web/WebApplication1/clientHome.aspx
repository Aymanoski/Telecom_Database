<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="clientHome.aspx.cs" Inherits="WebApplication1.clientHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            to see offered plans please click on Show Available plans<br />
            <asp:Button ID="AllPlans" runat="server" Text="Show Available plans" OnClick="AllPlans_Click" />
            <br />
            if u want to see total consumtions for a certain plan during a specific period please click on that button<br />
            <asp:Button ID="consumption" runat="server" Text="click here" />
            <br />
            if u want to see plans that ur not subscried you for a certain account please click on Unsubscribed<br />
            <asp:Button ID="unsub" runat="server" Text="Unsubscribed" />
            <br />
            if u want to see active plans for a specific account please click on Active<br />
            <asp:Button ID="Active" runat="server" Text="Active" />
            <br />
            if u want to see history of specific account please click on History of Transaction
            <br />
            <asp:Button ID="History" runat="server" Text="History of Transaction" />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
