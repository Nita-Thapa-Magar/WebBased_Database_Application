<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="_18030819_Nita_Thapa_Magar.HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-color: #333399;">
        <h1 style="color: #FFFFFF; text-align: center;">Dashboard</h1>
        <div class="container"  style="border: medium solid #808000;">
            <h3 style="color: #FFFFFF; text-align: center; ">Basic Forms</h3>
            <div class="row" style="margin: 20px; padding: 20px; border: thin dashed #808000; text-align: center;">
                <asp:Button ID="Button1" runat="server" Text="Customer Details" OnClick="Button1_Click" style="margin: 20px; padding: 20px 15px;" Font-Bold="True" />
                <asp:Button ID="Button2" runat="server" Text="Restaurant Details" OnClick="Button2_Click" style="margin: 20px; padding: 20px 15px;" Font-Bold="True"/>
                <asp:Button ID="Button3" runat="server" Text="Dish Details" OnClick="Button3_Click" style="margin: 20px; padding: 20px 15px;" Font-Bold="True"/>
                <asp:Button ID="Button4" runat="server" Text="Loyalty Points Details" OnClick="Button4_Click" style="margin: 20px; padding: 20px 15px;" Font-Bold="True"/>
                <asp:Button ID="Button5" runat="server" Text="Deliver Address Details" OnClick="Button5_Click" style="margin: 20px; padding: 20px 15px;" Font-Bold="True"/>
            </div>
        </div>
        <hr />
        <div class="content" style="border: medium solid #808000;">
            <h1 style="color: #FFFFFF; text-align: center">Complex Forms</h1>
            <div class="row" style=" margin: 20px; padding: 20px; border: thin dashed #808000; text-align: center;">
                <asp:Button ID="Button6" runat="server" Text="Customer-Order Detail" OnClick="Button6_Click" style="margin: 20px; padding: 20px 15px;" Font-Bold="True" />
                <asp:Button ID="Button7" runat="server" Text="Dish Search" OnClick="Button7_Click" style="margin: 20px; padding: 20px 15px;" Font-Bold="True"/>
                <asp:Button ID="Button8" runat="server" Text="Order Activity" OnClick="Button8_Click" style="margin: 20px; padding: 20px 15px;" Font-Bold="True" />
            </div>
        </div>
    </div>     
</asp:Content>
