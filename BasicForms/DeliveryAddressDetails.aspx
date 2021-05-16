<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeliveryAddressDetails.aspx.cs" Inherits="_18030819_Nita_Thapa_Magar.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div style="font-family: Arial; font-size: medium; font-style: normal; color: #000000; background-color: #FFFFCC; border: medium solid #000000; padding: 10px; margin: 10px">
        <h1 style="font-style: normal; font-weight: bold; padding: 10px; margin: 10px; text-align: center;">Delivery Address's Details</h1>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM DATABASECW1.ADDRESS WHERE (ADDRESS_ID = :PARAM1)" InsertCommand="INSERT INTO DATABASECW1.ADDRESS(ADDRESS_ID, ADDRESS_NAME, LATITUDE, LONGITUDE) VALUES (:PARAM1, :PARAM2, :PARAM3, :PARAM4)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT ADDRESS_ID, ADDRESS_NAME, LATITUDE, LONGITUDE FROM DATABASECW1.ADDRESS" UpdateCommand="UPDATE DATABASECW1.ADDRESS SET ADDRESS_NAME = :PARAM1, LATITUDE = :PARAM2, LONGITUDE = :PARAM3 WHERE (ADDRESS_ID = :PARAM4)">
            <DeleteParameters>
                <asp:Parameter Name="ADDRESS_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ADDRESS_ID" Type="Decimal" />
                <asp:Parameter Name="ADDRESS_NAME" Type="String" />
                <asp:Parameter Name="LATITUDE" Type="String" />
                <asp:Parameter Name="LONGITUDE" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ADDRESS_NAME" Type="String" />
                <asp:Parameter Name="LATITUDE" Type="String" />
                <asp:Parameter Name="LONGITUDE" Type="String" />
                <asp:Parameter Name="ADDRESS_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div style="padding: 10px; margin: 10px; border: medium ridge #808080">
            <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="ADDRESS_ID" CssClass="container-fluid">
            <EditItemTemplate>
                ADDRESS_ID:
                <asp:Label ID="ADDRESS_IDLabel1" runat="server" Text='<%# Eval("ADDRESS_ID") %>' />
                <br />
                ADDRESS_NAME:
                <asp:TextBox ID="ADDRESS_NAMETextBox" runat="server" Text='<%# Bind("ADDRESS_NAME") %>' />
                <br />
                LATITUDE:
                <asp:TextBox ID="LATITUDETextBox" runat="server" Text='<%# Bind("LATITUDE") %>' />
                <br />
                LONGITUDE:
                <asp:TextBox ID="LONGITUDETextBox" runat="server" Text='<%# Bind("LONGITUDE") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                ADDRESS_ID:
                <asp:TextBox ID="ADDRESS_IDTextBox" runat="server" Text='<%# Bind("ADDRESS_ID") %>' />
                <br />
                ADDRESS_NAME:
                <asp:TextBox ID="ADDRESS_NAMETextBox" runat="server" Text='<%# Bind("ADDRESS_NAME") %>' />
                <br />
                LATITUDE:
                <asp:TextBox ID="LATITUDETextBox" runat="server" Text='<%# Bind("LATITUDE") %>' />
                <br />
                LONGITUDE:
                <asp:TextBox ID="LONGITUDETextBox" runat="server" Text='<%# Bind("LONGITUDE") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                ADDRESS_ID:
                <asp:Label ID="ADDRESS_IDLabel" runat="server" Text='<%# Eval("ADDRESS_ID") %>' />
                <br />
                ADDRESS_NAME:
                <asp:Label ID="ADDRESS_NAMELabel" runat="server" Text='<%# Bind("ADDRESS_NAME") %>' />
                <br />
                LATITUDE:
                <asp:Label ID="LATITUDELabel" runat="server" Text='<%# Bind("LATITUDE") %>' />
                <br />
                LONGITUDE:
                <asp:Label ID="LONGITUDELabel" runat="server" Text='<%# Bind("LONGITUDE") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        </div>
        
        <div class="container-grid" style="padding: 10px; margin: 10px; border: medium ridge #808080">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="ADDRESS_ID" CellPadding="1">
            <AlternatingRowStyle BackColor="#669999" BorderColor="#006666" BorderStyle="Double" BorderWidth="2px" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ADDRESS_ID" HeaderText="ADDRESS_ID" ReadOnly="True" SortExpression="ADDRESS_ID" />
                <asp:BoundField DataField="ADDRESS_NAME" HeaderText="ADDRESS_NAME" SortExpression="ADDRESS_NAME" />
                <asp:BoundField DataField="LATITUDE" HeaderText="LATITUDE" SortExpression="LATITUDE" />
                <asp:BoundField DataField="LONGITUDE" HeaderText="LONGITUDE" SortExpression="LONGITUDE" />
            </Columns>
            <EditRowStyle BorderColor="#009999" BorderStyle="Solid" ForeColor="#CC0000" />
        </asp:GridView>
        </div>
        
    </div>
</asp:Content>
