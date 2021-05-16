<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_18030819_Nita_Thapa_Magar._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" style="text-align: center; padding: 50px; color: #FF0000; background-color: #FFFFFF; background-image: url('http://localhost:58032/images/img1.jpg'); background-size: cover; height: 500px; font-size: large;">
        <br />
        <h1 style="font-weight: bold" >Welcome to GOODFOOD!</h1>
        <br />
        <asp:Button ID="Button1" runat="server" Text="ADMIN LOGIN" BackColor="#660033" ForeColor="White" OnClick="Button1_Click" />
    </div>

     <h2 style="text-align:center">Our Services</h2>
    <div class="row">
        <div class="col-md-4">
            <h2>Fast Online Delivery</h2>
            <asp:Image ID="Image1" runat="server" ImageUrl="images/food1.png" BorderStyle="Solid" CssClass="img-circle" Height="250px" Width="350px" />
         </div>

        <div class="col-md-4">
            <h2 style="text-align:center">Quality Food</h2>
             <asp:Image ID="Image2" runat="server" ImageUrl="images/food2.png" BorderStyle="Solid" CssClass="img-circle" Height="250px" Width="350px" />
        </div>

       <div class="col-md-4">
            <h2 style="text-align:center">Best Services</h2>
             <asp:Image ID="Image3" runat="server" ImageUrl="images/food3.png" BorderStyle="Solid" CssClass="img-circle" Height="250px" Width="350px" />
        </div>

    </div>

</asp:Content>
