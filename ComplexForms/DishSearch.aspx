<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DishSearch.aspx.cs" Inherits="_18030819_Nita_Thapa_Magar.Dish_Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" style="text-align: center">

        <h1 style="font-style: normal; font-weight: bold; padding: 10px; margin: 10px; text-align: center;">Dish Search</h1>
        <div class="search-section">
             <h3 style="text-decoration: none; font-family: Broadway">Search the dish of your choice</h3>
            <div class="container-textbox" style="border: medium groove #808080; margin: 10px; background-color: #9DE0AD;">
                <div style="padding: 10px; margin: 10px; text-align: center">
                    <asp:Label ID="Label1" runat="server" Text="Enter the name of the dish:" CssClass="lblDishName" Font-Bold="True"></asp:Label>
                    <div style="padding: 2px; margin-right: 10px; margin-left: 10px; text-align: center">
                    <asp:TextBox ID="txtDishName" runat="server" Width="219px" BorderStyle="None"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDishName" ErrorMessage="*Please enter the name of the dish." ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <br />
                    <div style="padding: 10px; margin: 10px; font-weight: bold; text-align: center">
                        <asp:Button ID="Button1" runat="server" Text="SEARCH" BackColor="Blue" BorderStyle="None" Font-Bold="True" ForeColor="Black" />
                    </div>
                </div>
            </div>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT m.FOODMENU_ID, d.DISH_NAME, r.RESTAURANT_NAME, m.LOCAL_NAME, m.DISH_RATE, &quot;a&quot;.AVAILABLE FROM DATABASECW1.FOODMENU m INNER JOIN DATABASECW1.RESTAURANT r ON m.RESTAURANT_ID = r.RESTAURANT_ID INNER JOIN DATABASECW1.DISH d ON m.DISH_CODE = d.DISH_CODE INNER JOIN DATABASECW1.AVAILABILITY &quot;a&quot; ON m.FOODMENU_ID = &quot;a&quot;.FOODMENU_ID WHERE (d.DISH_NAME = :DISH_NAME)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtDishName" Name="DISH_NAME" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <div style="padding: 10px; margin: 20px; text-align: center;">
                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False">
                    <HeaderStyle BackColor="Black" ForeColor="#FFFFCC" />
                    <AlternatingRowStyle BackColor="#669999" BorderColor="#006666" BorderStyle="Double" BorderWidth="2px" />
                    <Columns>
                        <asp:BoundField DataField="FOODMENU_ID" HeaderText="FOODMENU_ID" SortExpression="FOODMENU_ID" />
                        <asp:BoundField DataField="DISH_NAME" HeaderText="DISH_NAME" SortExpression="DISH_NAME" />
                        <asp:BoundField DataField="RESTAURANT_NAME" HeaderText="RESTAURANT_NAME" SortExpression="RESTAURANT_NAME" />
                        <asp:BoundField DataField="LOCAL_NAME" HeaderText="LOCAL_NAME" SortExpression="LOCAL_NAME" />
                        <asp:BoundField DataField="DISH_RATE" HeaderText="DISH_RATE" SortExpression="DISH_RATE" />
                        <asp:BoundField DataField="AVAILABLE" HeaderText="AVAILABLE" SortExpression="AVAILABLE" />
                    </Columns>
                    <EditRowStyle BorderColor="#009999" BorderStyle="Solid" ForeColor="#CC0000" />
                </asp:GridView>
            </div>
        </div>
      </div>
</asp:Content>
