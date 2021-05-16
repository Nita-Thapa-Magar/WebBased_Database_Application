<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoyaltyPointsDetails.aspx.cs" Inherits="_18030819_Nita_Thapa_Magar.LoyaltyPointsDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div style="font-family: Arial; font-size: medium; font-style: normal; color: #000000; background-color: #FFFFCC; border: medium solid #000000; padding: 10px; margin: 10px">
        <h1 style="font-style: normal; font-weight: bold; padding: 10px; margin: 10px; text-align: center;">Loyalty Point's Details</h1>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM DATABASECW1.LOYALTYPOINT WHERE (LOYALTYPOINT_ID = :PARAM1)" InsertCommand="INSERT INTO DATABASECW1.LOYALTYPOINT(LOYALTYPOINT_ID, FOODMENU_ID, LOYALTY_POINT, &quot;DURATION&quot;) VALUES (:PARAM1, :PARAM2, :PARAM3, :PARAM4)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT LOYALTYPOINT_ID, FOODMENU_ID, LOYALTY_POINT, &quot;DURATION&quot; FROM DATABASECW1.LOYALTYPOINT" UpdateCommand="UPDATE DATABASECW1.LOYALTYPOINT SET FOODMENU_ID = :PARAM1, LOYALTY_POINT = :PARAM2, &quot;DURATION&quot; = :PARAM3 WHERE (LOYALTYPOINT_ID = :PARAM4)">
            <DeleteParameters>
                <asp:Parameter Name="LOYALTYPOINT_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="LOYALTYPOINT_ID" Type="Decimal" />
                <asp:Parameter Name="FOODMENU_ID" Type="Decimal" />
                <asp:Parameter Name="LOYALTY_POINT" Type="Decimal" />
                <asp:Parameter Name="DURATION" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FOODMENU_ID" Type="Decimal" />
                <asp:Parameter Name="LOYALTY_POINT" Type="Decimal" />
                <asp:Parameter Name="DURATION" Type="DateTime" />
                <asp:Parameter Name="LOYALTYPOINT_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div style="padding: 10px; margin: 10px; border: medium ridge #808080">
            <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="LOYALTYPOINT_ID" CssClass="container-fluid">
            <EditItemTemplate>
                LOYALTYPOINT_ID:
                <asp:Label ID="LOYALTYPOINT_IDLabel1" runat="server" Text='<%# Eval("LOYALTYPOINT_ID") %>' />
                <br />
                FOODMENU_ID:
                <asp:TextBox ID="FOODMENU_IDTextBox" runat="server" Text='<%# Bind("FOODMENU_ID") %>' />
                <br />
                LOYALTY_POINT:
                <asp:TextBox ID="LOYALTY_POINTTextBox" runat="server" Text='<%# Bind("LOYALTY_POINT") %>' />
                <br />
                DURATION:
                <asp:TextBox ID="DURATIONTextBox" runat="server" Text='<%# Bind("DURATION") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                LOYALTYPOINT_ID:
                <asp:TextBox ID="LOYALTYPOINT_IDTextBox" runat="server" Text='<%# Bind("LOYALTYPOINT_ID") %>' />
                <br />
                FOODMENU_ID:
                <asp:TextBox ID="FOODMENU_IDTextBox" runat="server" Text='<%# Bind("FOODMENU_ID") %>' />
                <br />
                LOYALTY_POINT:
                <asp:TextBox ID="LOYALTY_POINTTextBox" runat="server" Text='<%# Bind("LOYALTY_POINT") %>' />
                <br />
                DURATION:
                <asp:TextBox ID="DURATIONTextBox" runat="server" Text='<%# Bind("DURATION") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                LOYALTYPOINT_ID:
                <asp:Label ID="LOYALTYPOINT_IDLabel" runat="server" Text='<%# Eval("LOYALTYPOINT_ID") %>' />
                <br />
                FOODMENU_ID:
                <asp:Label ID="FOODMENU_IDLabel" runat="server" Text='<%# Bind("FOODMENU_ID") %>' />
                <br />
                LOYALTY_POINT:
                <asp:Label ID="LOYALTY_POINTLabel" runat="server" Text='<%# Bind("LOYALTY_POINT") %>' />
                <br />
                DURATION:
                <asp:Label ID="DURATIONLabel" runat="server" Text='<%# Bind("DURATION") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        </div>
        
        <div class="container-grid" style="padding: 10px; margin: 10px; border: medium ridge #808080">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="LOYALTYPOINT_ID" CellPadding="1">
            <AlternatingRowStyle BackColor="#669999" BorderColor="#006666" BorderStyle="Double" BorderWidth="2px" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="LOYALTYPOINT_ID" HeaderText="LOYALTYPOINT_ID" ReadOnly="True" SortExpression="LOYALTYPOINT_ID" />
                <asp:BoundField DataField="FOODMENU_ID" HeaderText="FOODMENU_ID" SortExpression="FOODMENU_ID" />
                <asp:BoundField DataField="LOYALTY_POINT" HeaderText="LOYALTY_POINT" SortExpression="LOYALTY_POINT" />
                <asp:BoundField DataField="DURATION" HeaderText="DURATION" SortExpression="DURATION" />
            </Columns>
            <EditRowStyle BorderColor="#009999" BorderStyle="Solid" ForeColor="#CC0000" />
        </asp:GridView>
        </div>
        
    </div>
</asp:Content>
