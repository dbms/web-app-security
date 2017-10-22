<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="MinorProject.admin" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <center>
        <asp:GridView ID="GridView1" runat="server" HtmlEncode="False" OnRowDataBound="GridView1_RowDataBound">
        </asp:GridView>
            </center>
    </form>
</body>
</html>
