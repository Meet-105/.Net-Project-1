﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_profile.aspx.cs" Inherits="JobPortal.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page</title>
    <meta name="viewport" content="" width="device-width" initial-scale="1.0" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header>
                <h2>Welcome to JobPortal.com</h2>
            </header>
            <nav >
                
                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Home</asp:LinkButton>&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Manage Candidates</asp:LinkButton>&nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Manage Jobs</asp:LinkButton>&nbsp;
                <a href="">About Us</a>
            </nav>
            <br />
            <div id="M_Candidate" runat="server">
                <p>Manage Candidates</p>
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="STREAM" HeaderText="STREAM" SortExpression="STREAM" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Candidate]"
                    UpdateCommand="UPDATE [CANDIDATE] SET [NAME]=@NAME, [STREAM]=@STREAM WHERE [ID]=@ID"
                    DeleteCommand="DELETE FROM [CANDIDATE] WHERE [ID]=@ID"></asp:SqlDataSource>
            </div>
            <div id="M_Jobs" runat="server">
                <p>Manage Jobs</p>
                <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource3">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="STREAM" HeaderText="STREAM" SortExpression="STREAM" />
                        <asp:BoundField DataField="CNAME" HeaderText="CNAME" SortExpression="CNAME" />
                        <asp:BoundField DataField="SALARY" HeaderText="SALARY" SortExpression="SALARY" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [JOB]"
                    UpdateCommand="UPDATE [JOB] SET [STREAM]=@STREAM, [CNAME]=@CNAME, [SALARY]=@SALARY WHERE [ID]=@ID"
                    DeleteCommand="DELETE FROM [JOB] WHERE [ID]=@ID"
                    ></asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>
