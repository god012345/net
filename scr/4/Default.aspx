<!-- 4. WEB APPLICATION USING LIST CONTROLS -->
<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs"
    Inherits="ListControlsDemo.Default" %>
   <!DOCTYPE html>
   <html>
   <head runat="server">
   <title>List Controls Lab</title>
   </head>
   <body>
   <form id="form1" runat="server">
   <h2>ASP.NET List Controls</h2>
   <asp:Label ID="Label1" runat="server" Text="Select     Department"></asp:Label><br />
   <asp:DropDownList ID="ddlDept" runat="server">
    <asp:ListItem Text="IT" />
     <asp:ListItem Text="CSE" />
      <asp:ListItem Text="ECE" />
       <asp:ListItem Text="EEE" />
       </asp:DropDownList>
     <br /><br />
    <asp:Label ID="Label2" runat="server" Text="Select Gender"></asp:Label><br />
   <asp:RadioButtonList ID="rblGender" runat="server">
    <asp:ListItem Text="Male" />
     <asp:ListItem Text="Female" />
     </asp:RadioButtonList>
      <br />
     <asp:Label ID="Label3" runat="server" Text="Select Skills"></asp:Label><br />
       <asp:CheckBoxList ID="cblSkills" runat="server">
        <asp:ListItem Text="Java" />
        <asp:ListItem Text="C#" />
         <asp:ListItem Text="Python" />
        </asp:CheckBoxList>
         <br />
      <asp:Button ID="btnSubmit" runat="server"
        Text="Submit"
         OnClick="btnSubmit_Click" />
      <br /><br />
      <asp:Label ID="lblResult" runat="server"   ForeColor="Blue"></asp:Label>
     </form>
     </body>
     </html>
