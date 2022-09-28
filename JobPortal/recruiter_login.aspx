<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="recruiter_login.aspx.cs" Inherits="JobPortal.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Job Portal</title>
    <meta name="viewport" content="" width="device-width" initial-scale="1.0" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header>
                <h2>Welcome to JobPortal.com</h2>
            </header>
           
            <br />
            <div>
                <div class="w3-container w3-orange">
                    <h2>Login Form</h2>
                </div>

                <div class="w3-container">

                    <p>

                        <asp:TextBox ID="TextBox1" class="w3-input" runat="server"></asp:TextBox>
                        <label>User Name</label>
                    </p>
                    <p>
                        <asp:TextBox ID="TextBox2" class="w3-input" runat="server"></asp:TextBox>
                        <label>Password</label>
                    </p>
                    <p>
                        
                        <asp:Button ID="Button1" class="w3-btn w3-blue" runat="server" Text="Login" OnClick="Button1_Click" />
                    </p>
                    <p>
                        <asp:Label ID="Label1" runat="server" Text="Role"></asp:Label>
                    </p>
                </div>
                
            </div>
    </form>
</body>
</html>
