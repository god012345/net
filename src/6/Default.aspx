<!-- 6.WEB APPLICATION USING DATA CONTROLS -->
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DataListDemo.Default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>DataList Example</title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:DataList ID="DataList1" runat="server" BorderWidth="1">
            <ItemTemplate>
                <b>Student ID:</b> <%# Eval("ID") %><br />
                <b>Name:</b> <%# Eval("Name") %><br />
                <b>Course:</b> <%# Eval("Course") %>
                <hr />
            </ItemTemplate>
        </asp:DataList>

    </form>
</body>
</html>
