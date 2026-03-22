<!-- 8. VALIDATION CONTROL -->
<%@ Page Language="C#" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>User Registration</title>
<style>
body {
font-family: Arial;
background-color: #f2f2f2;
}
.box {
width: 360px;
margin: 100px auto;
padding: 20px;
background: #fff;
border: 1px solid #aaa;
border-radius: 6px;
}
h3 {
text-align: center;
}
.row {
margin-bottom: 10px;
}
. row label {
display: block;
font-weight: bold;
}
.row input {
width: 95%;
}
. center {
text-align: center;
}    /* Success label small size */
.msg {
display: inline-block;
padding: 3px 6px;
font-size: 12px;
margin-top: 5px;
}
</style>
</head>

<body>
<form runat="server">

<div class="box">
<h3>User Registration</h3>

<div class="row">
<label>Name</label>
<asp:TextBox ID="txtName" runat="server" />
<asp:RequiredFieldValidator runat="server  ControlToValidate="txtName ErrorMessage="Required"
ForeColor="Red" />
</div>

<div class="row">
<label>Email</label>
<asp:TextBox ID="txtEmail" runat="server" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail"ErrorMessage="Required"
Forecolour="Red" />
<asp:RegularExpressionValidator runat="server"ControlToValidate="txtEmail"
ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"ErrorMessage="Invalid"ForeColor="Red" />
</div>

<div class="row">
<label>Age</label>
<asp:TextBox ID="txtAge" runat="server" />
<asp:RangeValidator runat="server" ControlToValidate="txtAge"MinimumValue="18"MaximumValue="60"
Type="Integer" ErrorMessage="18–60 only" ForeColor="Red" />
</div>

<div class="row">
<label>Password</label>
<asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
<asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" ErrorMessage="Required"
ForeColor="Red" />   </div>
<div class="row">
<label>Confirm Password</label>
<asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" />
<asp:CompareValidator runat="server"ControlToValidate="txtConfirm"ControlToCompare="txtPassword"
ErrorMessage="Mismatch" ForeColor="Red" />
</div>

<div class="center">
<asp:Button runat="server"  Text="Submit" OnClick="SubmitClick" />
<br />
<asp:Label ID="lblMsg" runat="server" CssClass="msg" ForeColor="Green" />
</div>
</div>
</form>
<script runat="server">
protected void Submit_Click(object sender, EventArgs e)
{
if (Page.IsValid)
{
lblMsg.Text = "Registration Successful";
}
}
</script>
</body>
</html>
