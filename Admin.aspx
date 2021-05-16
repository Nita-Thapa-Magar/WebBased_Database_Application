<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="_18030819_Nita_Thapa_Magar.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
  
</head>
<body>
    <div class="container" style="background-image: url('images/img1.jpg'); overflow: hidden">
        <div class="login" style="text-align:center">
            <h1 class="adminhead">Admin Panel</h1>
            <div class="main">
                <form id="form1" runat="server" enableviewstate="False" style="border: medium outset #C0C0C0; padding: 10px; margin: 50px; background-color: #c65353">
                <div style="padding: 10px; margin: 10px">
                <asp:Label ID="Label1" runat="server" CssClass="lblUsername" ForeColor="#333333" Text="Username: " Font-Bold="True"></asp:Label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="textUsername" Width="325px"></asp:TextBox>
                    <br />
                </div>
                <br />
                <div style="padding: 10px; margin: 10px">
                <asp:Label ID="Label2" runat="server" Text="Email:" Font-Bold="True" ForeColor="#333333"></asp:Label>
                <asp:TextBox ID="txtEmailAddress" runat="server" CssClass="txtEmail"  Width="316px" TextMode="Email"></asp:TextBox>
                </div>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Password:" Font-Bold="True" ForeColor="#333333"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" Width="325px" style="margin-left: 31px" TextMode="Password"></asp:TextBox>
                <br />
               
                <div style="padding: 10px; margin: 10px">
                <asp:Button ID="btnLogin" runat="server" Text="Login" BackColor="#009933" BorderStyle="None" Font-Bold="True" ForeColor="Black" style="margin-left: 109px" Width="163px" OnClick="btnLogin_Click" Height="29px" />
                </div>
            </form>
              </div>
      </div>
    </div>
   
   
   
   
</body>
</html>
