<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RestaurantDetails.aspx.cs" Inherits="_18030819_Nita_Thapa_Magar.RestaurantDetails1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="font-family: Arial; font-size: medium; font-style: normal; color: #000000; background-color: #FFFFCC; border: medium solid #000000; padding: 10px; margin: 10px">
        <h1 style="font-style: normal; font-weight: bold; padding: 10px; margin: 10px; text-align: center;">Restaurant's Details</h1>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM DATABASECW1.RESTAURANT WHERE (RESTAURANT_ID = :PARAM1)" InsertCommand="INSERT INTO DATABASECW1.RESTAURANT(RESTAURANT_ID, RESTAURANT_NAME, RESTAURANT_ADDRESS, RESTAURANT_CONTACTNO, RESTAURANT_EMAIL) VALUES (:PARAM1, :PARAM2, :PARAM3, :PARAM4, :PARAM5)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT RESTAURANT_ID, RESTAURANT_NAME, RESTAURANT_ADDRESS, RESTAURANT_CONTACTNO, RESTAURANT_EMAIL FROM DATABASECW1.RESTAURANT" UpdateCommand="UPDATE DATABASECW1.RESTAURANT SET RESTAURANT_NAME = :PARAM1, RESTAURANT_ADDRESS = :PARAM2, RESTAURANT_CONTACTNO = :PARAM3, RESTAURANT_EMAIL = :PARAM4 WHERE (RESTAURANT_ID = :PARAM5)">
            <DeleteParameters>
                <asp:Parameter Name="RESTAURANT_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="RESTAURANT_ID" Type="Decimal" />
                <asp:Parameter Name="RESTAURANT_NAME" Type="String" />
                <asp:Parameter Name="RESTAURANT_ADDRESS" Type="String" />
                <asp:Parameter Name="RESTAURANT_CONTACTNO" Type="String" />
                <asp:Parameter Name="RESTAURANT_EMAIL" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="RESTAURANT_NAME" Type="String" />
                <asp:Parameter Name="RESTAURANT_ADDRESS" Type="String" />
                <asp:Parameter Name="RESTAURANT_CONTACTNO" Type="String" />
                <asp:Parameter Name="RESTAURANT_EMAIL" Type="String" />
                <asp:Parameter Name="RESTAURANT_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div style="padding: 10px; margin: 10px; border: medium ridge #808080">
            <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="RESTAURANT_ID" CssClass="container-fluid">
            <EditItemTemplate>
                RESTAURANT_ID:
                <asp:Label ID="RESTAURANT_IDLabel1" runat="server" Text='<%# Eval("RESTAURANT_ID") %>' />
                <br />
                RESTAURANT_NAME:
                <asp:TextBox ID="RESTAURANT_NAMETextBox" runat="server" Text='<%# Bind("RESTAURANT_NAME") %>' />
                <br />
                RESTAURANT_ADDRESS:
                <asp:TextBox ID="RESTAURANT_ADDRESSTextBox" runat="server" Text='<%# Bind("RESTAURANT_ADDRESS") %>' />
                <br />
                RESTAURANT_CONTACTNO:
                <asp:TextBox ID="RESTAURANT_CONTACTNOTextBox" runat="server" Text='<%# Bind("RESTAURANT_CONTACTNO") %>' />
                <br />
                RESTAURANT_EMAIL:
                <asp:TextBox ID="RESTAURANT_EMAILTextBox" runat="server" Text='<%# Bind("RESTAURANT_EMAIL") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                RESTAURANT_ID:
                <asp:TextBox ID="RESTAURANT_IDTextBox" runat="server" Text='<%# Bind("RESTAURANT_ID") %>' />
                <br />
                RESTAURANT_NAME:
                <asp:TextBox ID="RESTAURANT_NAMETextBox" runat="server" Text='<%# Bind("RESTAURANT_NAME") %>' />
                <br />
                RESTAURANT_ADDRESS:
                <asp:TextBox ID="RESTAURANT_ADDRESSTextBox" runat="server" Text='<%# Bind("RESTAURANT_ADDRESS") %>' />
                <br />
                RESTAURANT_CONTACTNO:
                <asp:TextBox ID="RESTAURANT_CONTACTNOTextBox" runat="server" Text='<%# Bind("RESTAURANT_CONTACTNO") %>' />
                <br />
                RESTAURANT_EMAIL:
                <asp:TextBox ID="RESTAURANT_EMAILTextBox" runat="server" Text='<%# Bind("RESTAURANT_EMAIL") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                RESTAURANT_ID:
                <asp:Label ID="RESTAURANT_IDLabel" runat="server" Text='<%# Eval("RESTAURANT_ID") %>' />
                <br />
                RESTAURANT_NAME:
                <asp:Label ID="RESTAURANT_NAMELabel" runat="server" Text='<%# Bind("RESTAURANT_NAME") %>' />
                <br />
                RESTAURANT_ADDRESS:
                <asp:Label ID="RESTAURANT_ADDRESSLabel" runat="server" Text='<%# Bind("RESTAURANT_ADDRESS") %>' />
                <br />
                RESTAURANT_CONTACTNO:
                <asp:Label ID="RESTAURANT_CONTACTNOLabel" runat="server" Text='<%# Bind("RESTAURANT_CONTACTNO") %>' />
                <br />
                RESTAURANT_EMAIL:
                <asp:Label ID="RESTAURANT_EMAILLabel" runat="server" Text='<%# Bind("RESTAURANT_EMAIL") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        </div>
        
        <div class="container-grid" style="padding: 10px; margin: 10px; border: medium ridge #808080">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="RESTAURANT_ID" CellPadding="1">
            <AlternatingRowStyle BackColor="#669999" BorderColor="#006666" BorderStyle="Double" BorderWidth="2px" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="RESTAURANT_ID" HeaderText="RESTAURANT_ID" ReadOnly="True" SortExpression="RESTAURANT_ID" />
                <asp:BoundField DataField="RESTAURANT_NAME" HeaderText="RESTAURANT_NAME" SortExpression="RESTAURANT_NAME" />
                <asp:BoundField DataField="RESTAURANT_ADDRESS" HeaderText="RESTAURANT_ADDRESS" SortExpression="RESTAURANT_ADDRESS" />
                <asp:BoundField DataField="RESTAURANT_CONTACTNO" HeaderText="RESTAURANT_CONTACTNO" SortExpression="RESTAURANT_CONTACTNO" />
                <asp:BoundField DataField="RESTAURANT_EMAIL" HeaderText="RESTAURANT_EMAIL" SortExpression="RESTAURANT_EMAIL" />
            </Columns>
            <EditRowStyle BorderColor="#009999" BorderStyle="Solid" ForeColor="#CC0000" />
        </asp:GridView>
        </div>
        
    </div>
</asp:Content>
