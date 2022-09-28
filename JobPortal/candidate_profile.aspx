<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="candidate_profile.aspx.cs" Inherits="JobPortal.candidate_profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Candidate page</title>
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
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Home</asp:LinkButton>&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">View Jobs</asp:LinkButton>&nbsp;
                <a href="">About Us</a>
            </nav>
            <br />
             <div id="reg_form" runat="server">
                <div class="w3-container w3-orange">
                    <h2> Application Form</h2>
                </div>

                <div class="w3-container">

                    <p>
                        <asp:TextBox ID="TextBox1" class="w3-input" runat="server"></asp:TextBox>
                        <label>Full Name</label>
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
                        <asp:Button ID="Button1" class="w3-btn w3-blue" runat="server" Text="Register" OnClick="Button1_Click" />
                    </p>
                </div>
                
            </div>
            <div>

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
        </div>
    </form>
</body>
</html>
