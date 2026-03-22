<!-- 9.DATABASE APPLICATION TO PERFORM INSERT, UPDATE AND DELETE OPERATION -->
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Student Details</title>
</head>
<body>
    <form id="form1" runat="server">

        <h2>Student Details</h2>

        <asp:GridView ID="GridView1" runat="server"
            AutoGenerateColumns="False"
            AllowPaging="True"
            AllowSorting="True"
            PageSize="3"
            AutoGenerateEditButton="True"
            DataKeyNames="Id"
            OnPageIndexChanging="GridView1_PageIndexChanging"
            OnRowEditing="GridView1_RowEditing"
            OnRowUpdating="GridView1_RowUpdating"
            OnRowCancelingEdit="GridView1_RowCancelingEdit">

            <Columns>
                <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                <asp:BoundField DataField="Marks" HeaderText="Marks" SortExpression="Marks" />
            </Columns>

        </asp:GridView>

    </form>
</body>
</html>
