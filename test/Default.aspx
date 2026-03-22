<!-- 1. IMPLEMENT THE HTML CONTROLS -->
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HtmlControlsDemo.Default" %>

<!DOCTYPE html>
<html>
<head>
    <title>HTML Controls Demo</title>
</head>
<body>
    <form id="form1" runat="server">

        Enter Name :
        <input type="text" id="txtName" runat="server" />
        <br /><br />

        <input type="submit" id="btnSubmit" value="Submit"
               runat="server" onserverclick="btnSubmit_ServerClick" />
        <br /><br />

        <span id="result" runat="server"></span>

    </form>
</body>
</html>
