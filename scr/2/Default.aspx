<!-- 2. IMPLEMENT THE SERVER CONTROLS -->
<%@ Page Language="C#" AutoEventWireup="true"
CodeBehind="Default.aspx.cs"
Inherits="ServerControl.Default" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Server Controls Demo</title>
 </head>
 <body>
 <form id="form1" runat="server">
 <asp:Label ID="Label1" runat="server"
  Text="Enter Name"></asp:Label>
<br /><br />
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
 <br /><br />
 <asp:Button ID="Button1" runat="server"
  Text="Submit" OnClick="Button1_Click" />
 <br /><br />
 <asp:Label ID="Label2" runat="server"></asp:Label>
</form>
</body>
</html>
