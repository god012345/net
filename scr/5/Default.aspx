<!-- 5. WEB PAGE DESIGN USING RICH CONTROL -->
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>
<form id="form1" runat="server">
    Year :
    <asp:DropDownList ID="ddlYear" runat="server"
        AutoPostBack="true"
        OnSelectedIndexChanged="ChangeDate" />
    Month :
    <asp:DropDownList ID="ddlMonth" runat="server"
        AutoPostBack="true"
        OnSelectedIndexChanged="ChangeDate" />
    <br /><br />
    <asp:Calendar ID="Calendar1" runat="server"
        AutoPostBack="true"
        OnSelectionChanged="Calendar1_SelectionChanged" />
    <br />
    <asp:Label ID="Label1" runat="server" />
</form>
