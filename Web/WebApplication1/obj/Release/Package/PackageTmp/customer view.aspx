<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customer view.aspx.cs" Inherits="WebApplication1.customer_view" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
               <asp:GridView ID="Accounts" runat="server" AutoGenerateColumns="true" 
       CssClass="table table-bordered table-striped" />
        </div>
    </form>
</body>
</html>
