<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DishDetails.aspx.cs" Inherits="_18030819_Nita_Thapa_Magar.DishDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div style="font-family: Arial; font-size: medium; font-style: normal; color: #000000; background-color: #FFFFCC; border: medium solid #000000; padding: 10px; margin: 10px">
        <h1 style="font-style: normal; font-weight: bold; padding: 10px; margin: 10px; text-align: center;">Dish Details</h1>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM DATABASECW1.FOODMENU WHERE (FOODMENU_ID = :PARAM1)" InsertCommand="INSERT INTO DATABASECW1.FOODMENU(FOODMENU_ID, DISH_CODE, LOCAL_NAME, DISH_RATE, RESTAURANT_ID) VALUES (:PARAM1, :PARAM2, :PARAM3, :PARAM4, :PARAM5)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT FOODMENU_ID, DISH_CODE, LOCAL_NAME, DISH_RATE, RESTAURANT_ID FROM DATABASECW1.FOODMENU" UpdateCommand="UPDATE DATABASECW1.FOODMENU SET DISH_CODE = :PARAM1, LOCAL_NAME = :PARAM2, DISH_RATE = :PARAM3, RESTAURANT_ID = :PARAM4 WHERE (FOODMENU_ID = :PARAM5)">
            <DeleteParameters>
                <asp:Parameter Name="FOODMENU_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FOODMENU_ID" Type="Decimal" />
                <asp:Parameter Name="DISH_CODE" Type="Decimal" />
                <asp:Parameter Name="LOCAL_NAME" Type="String" />
                <asp:Parameter Name="DISH_RATE" Type="Decimal" />
                <asp:Parameter Name="RESTAURANT_ID" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="DISH_CODE" Type="Decimal" />
                <asp:Parameter Name="LOCAL_NAME" Type="String" />
                <asp:Parameter Name="DISH_RATE" Type="Decimal" />
                <asp:Parameter Name="RESTAURANT_ID" Type="Decimal" />
                <asp:Parameter Name="FOODMENU_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div style="padding: 10px; margin: 10px; border: medium ridge #808080">
            <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="FOODMENU_ID" CssClass="container-fluid">
            <EditItemTemplate>
                FOODMENU_ID:
                <asp:Label ID="FOODMENU_IDLabel1" runat="server" Text='<%# Eval("FOODMENU_ID") %>' />
                <br />
                DISH_CODE:
                <asp:TextBox ID="DISH_CODETextBox" runat="server" Text='<%# Bind("DISH_CODE") %>' />
                <br />
                LOCAL_NAME:
                <asp:TextBox ID="LOCAL_NAMETextBox" runat="server" Text='<%# Bind("LOCAL_NAME") %>' />
                <br />
                DISH_RATE:
                <asp:TextBox ID="DISH_RATETextBox" runat="server" Text='<%# Bind("DISH_RATE") %>' />
                <br />
                RESTAURANT_ID:
                <asp:TextBox ID="RESTAURANT_IDTextBox" runat="server" Text='<%# Bind("RESTAURANT_ID") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                FOODMENU_ID:
                <asp:TextBox ID="FOODMENU_IDTextBox" runat="server" Text='<%# Bind("FOODMENU_ID") %>' />
                <br />
                DISH_CODE:
                <asp:TextBox ID="DISH_CODETextBox" runat="server" Text='<%# Bind("DISH_CODE") %>' />
                <br />
                LOCAL_NAME:
                <asp:TextBox ID="LOCAL_NAMETextBox" runat="server" Text='<%# Bind("LOCAL_NAME") %>' />
                <br />
                DISH_RATE:
                <asp:TextBox ID="DISH_RATETextBox" runat="server" Text='<%# Bind("DISH_RATE") %>' />
                <br />
                RESTAURANT_ID:
                <asp:TextBox ID="RESTAURANT_IDTextBox" runat="server" Text='<%# Bind("RESTAURANT_ID") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                FOODMENU_ID:
                <asp:Label ID="FOODMENU_IDLabel" runat="server" Text='<%# Eval("FOODMENU_ID") %>' />
                <br />
                DISH_CODE:
                <asp:Label ID="DISH_CODELabel" runat="server" Text='<%# Bind("DISH_CODE") %>' />
                <br />
                LOCAL_NAME:
                <asp:Label ID="LOCAL_NAMELabel" runat="server" Text='<%# Bind("LOCAL_NAME") %>' />
                <br />
                DISH_RATE:
                <asp:Label ID="DISH_RATELabel" runat="server" Text='<%# Bind("DISH_RATE") %>' />
                <br />
                RESTAURANT_ID:
                <asp:Label ID="RESTAURANT_IDLabel" runat="server" Text='<%# Bind("RESTAURANT_ID") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        </div>
        
        <div class="container-grid" style="padding: 10px; margin: 10px; border: medium ridge #808080">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="FOODMENU_ID" CellPadding="1">
            <AlternatingRowStyle BackColor="#669999" BorderColor="#006666" BorderStyle="Double" BorderWidth="2px" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="FOODMENU_ID" HeaderText="FOODMENU_ID" ReadOnly="True" SortExpression="FOODMENU_ID" />
                <asp:BoundField DataField="DISH_CODE" HeaderText="DISH_CODE" SortExpression="DISH_CODE" />
                <asp:BoundField DataField="LOCAL_NAME" HeaderText="LOCAL_NAME" SortExpression="LOCAL_NAME" />
                <asp:BoundField DataField="DISH_RATE" HeaderText="DISH_RATE" SortExpression="DISH_RATE" />
                <asp:BoundField DataField="RESTAURANT_ID" HeaderText="RESTAURANT_ID" SortExpression="RESTAURANT_ID" />
            </Columns>
            <EditRowStyle BorderColor="#009999" BorderStyle="Solid" ForeColor="#CC0000" />
        </asp:GridView>
        </div>
        
    </div>
</asp:Content>
