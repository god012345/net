<!-- 3. WEB APPLICATION USING WEB CONTROLS -->
<%@ Page Language="C#" AutoEventWireup="true" 
CodeBehind="Default.aspx.cs" Inherits="webcontrols.Default" %> 
<!DOCTYPE html> 
<html> 
<head runat="server"> 
<title>Bio Data Form</title> 
</head> 
<body> 
<form id="form1" runat="server"> 
<center> 
<h2>Bio Data Form</h2> 
<fieldset style="width:400px;"> 
<legend>Enter Details</legend> 
<table cellpadding="5"> 
<tr> 
<td align="right">Name:</td> 
<td><asp:TextBox ID="txtName" runat="server" Width="200px" /></td> 
</tr> 
<tr> 
<td align="right">DOB:</td> 
<td><asp:TextBox ID="txtDob" runat="server" TextMode="Date" Width="200px" /></td> 
</tr> 
<tr> 
<td align="right">Gender:</td> 
<td> 
<asp:RadioButton ID="rbMale" runat="server" GroupName="gender" Text="Male" /> 
<asp:RadioButton ID="rbFemale" runat="server" GroupName="gender" Text="Female" /> 
</td> 
</tr> 
<tr> 
<td align="right">Email:</td> 
<td><asp:TextBox ID="txtEmail" runat="server" Width="200px" /></td> 
</tr> 
<tr> 
<td align="right">Course:</td> 
<td> 
<asp:DropDownList ID="ddlCourse" runat="server" Width="200px"> 
<asp:ListItem>Select</asp:ListItem> 
<asp:ListItem>BSc CS</asp:ListItem> 
<asp:ListItem>BCA</asp:ListItem> 
<asp:ListItem>MCA</asp:ListItem> 
</asp:DropDownList> 
</td> 
</tr> 
<tr> 
<td align="right">Skills:</td> 
<td><asp:TextBox ID="txtSkills" runat="server" Width="200px" /></td> 
</tr> 
<tr> 
<td colspan="2" align="center"> 
<asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /> 
</td> 
</tr> 
<tr> 
<td colspan="2"> 
<asp:Panel ID="pnlOutput" runat="server"> 
<asp:Label ID="lblOutput" runat="server" /> 
</asp:Panel> 
</td> 
</tr> 
</table> 
</fieldset> 
</center> 
</form> 
</body> 
</html> 
