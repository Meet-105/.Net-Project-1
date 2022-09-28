<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="recruiter_profile.aspx.cs" Inherits="JobPortal.recruiter_profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Recruiter Page</title>
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
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Application List</asp:LinkButton>&nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Post Jobs</asp:LinkButton>&nbsp;
                <a href="">About Us</a>
            </nav>
            <br />
            <div id="App_List" runat="server">
                <p>Total Applications</p>
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
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
            </div>
            <div id="post_job" runat="server">
                <p class="w3-blue">Total Applications</p>
                 <div class="w3-container">

                    
                    <p>
                        <asp:TextBox ID="TextBox2" class="w3-input" runat="server"></asp:TextBox>
                        <label>Company Name</label>
                    </p>
                     <p>
                        <asp:TextBox ID="TextBox1" class="w3-input" runat="server"></asp:TextBox>

                        <label>Salary</label>
                    </p>
                     <p>
                        <select id="Select1" runat="server">
                            <option>Engineering</option>
                            <option>Deploma</option>
                            <option>B.B.A</option>
                        </select>
                        <label>Stream</label>
                    </p>
                    <p>
                        
                        <asp:Button ID="Button1" class="w3-btn w3-blue" runat="server" Text="Post" OnClick="Button1_Click" />
                    </p>
                </div>
            </div>
            <div id="job_list" runat="server">
                <p>Job List</p>
                <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
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
            </div>
        </div>
    </form>
</body>
</html>
