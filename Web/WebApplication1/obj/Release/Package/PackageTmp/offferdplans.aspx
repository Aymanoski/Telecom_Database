<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="offferdplans.aspx.cs" Inherits="WebApplication1.offferdplans" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Service Plans</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="plans" runat="server" AutoGenerateColumns="true" 
                CssClass="table table-bordered table-striped" />
        </div>
    </form>
</body>
</html>

