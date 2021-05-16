<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerDetails.aspx.cs" Inherits="_18030819_Nita_Thapa_Magar.CustomerDetails1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="font-family: Arial; font-size: medium; font-style: normal; color: #000000; background-color: #FFFFCC; border: medium solid #000000; padding: 10px; margin: 10px">
        <h1 style="font-style: normal; font-weight: bold; padding: 10px; margin: 10px; text-align: center;">Customer's Details</h1>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM DATABASECW1.CUSTOMER WHERE (CUSTOMER_ID = :PARAM1)" InsertCommand="INSERT INTO DATABASECW1.CUSTOMER(CUSTOMER_ID, CUSTOMER_NAME, CUSTOMER_ADDRESS, CUSTOMER_CONTACTNO, CUSTOMER_EMAIL) VALUES (:PARAM1, :PARAM2, :PARAM3, :PARAM4, :PARAM5)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT CUSTOMER_ID, CUSTOMER_NAME, CUSTOMER_ADDRESS, CUSTOMER_CONTACTNO, CUSTOMER_EMAIL FROM DATABASECW1.CUSTOMER" UpdateCommand="UPDATE DATABASECW1.CUSTOMER SET CUSTOMER_NAME = :PARAM1, CUSTOMER_ADDRESS = :PARAM2, CUSTOMER_CONTACTNO = :PARAM3, CUSTOMER_EMAIL = :PARAM4 WHERE (CUSTOMER_ID = :PARAM5)">
            <DeleteParameters>
                <asp:Parameter Name="CUSTOMER_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CUSTOMER_ID" Type="Decimal" />
                <asp:Parameter Name="CUSTOMER_NAME" Type="String" />
                <asp:Parameter Name="CUSTOMER_ADDRESS" Type="String" />
                <asp:Parameter Name="CUSTOMER_CONTACTNO" Type="String" />
                <asp:Parameter Name="CUSTOMER_EMAIL" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CUSTOMER_NAME" Type="String" />
                <asp:Parameter Name="CUSTOMER_ADDRESS" Type="String" />
                <asp:Parameter Name="CUSTOMER_CONTACTNO" Type="String" />
                <asp:Parameter Name="CUSTOMER_EMAIL" Type="String" />
                <asp:Parameter Name="CUSTOMER_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div style="padding: 10px; margin: 10px; border: medium ridge #808080">
            <asp:FormView ID="FormView1" runat="server" CssClass="container-fluid" DataKeyNames="CUSTOMER_ID" DataSourceID="SqlDataSource1">
                <EditItemTemplate>
                    CUSTOMER_ID:
                    <asp:Label ID="CUSTOMER_IDLabel1" runat="server" Text='<%# Eval("CUSTOMER_ID") %>' />
                    <br />
                    CUSTOMER_NAME:
                    <asp:TextBox ID="CUSTOMER_NAMETextBox" runat="server" Text='<%# Bind("CUSTOMER_NAME") %>' />
                    <br />
                    CUSTOMER_ADDRESS:
                    <asp:TextBox ID="CUSTOMER_ADDRESSTextBox" runat="server" Text='<%# Bind("CUSTOMER_ADDRESS") %>' />
                    <br />
                    CUSTOMER_CONTACTNO:
                    <asp:TextBox ID="CUSTOMER_CONTACTNOTextBox" runat="server" Text='<%# Bind("CUSTOMER_CONTACTNO") %>' />
                    <br />
                    CUSTOMER_EMAIL:
                    <asp:TextBox ID="CUSTOMER_EMAILTextBox" runat="server" Text='<%# Bind("CUSTOMER_EMAIL") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    CUSTOMER_ID:
                    <asp:TextBox ID="CUSTOMER_IDTextBox" runat="server" Text='<%# Bind("CUSTOMER_ID") %>' />
                    <br />
                    CUSTOMER_NAME:
                    <asp:TextBox ID="CUSTOMER_NAMETextBox" runat="server" Text='<%# Bind("CUSTOMER_NAME") %>' />
                    <br />
                    CUSTOMER_ADDRESS:
                    <asp:TextBox ID="CUSTOMER_ADDRESSTextBox" runat="server" Text='<%# Bind("CUSTOMER_ADDRESS") %>' />
                    <br />
                    CUSTOMER_CONTACTNO:
                    <asp:TextBox ID="CUSTOMER_CONTACTNOTextBox" runat="server" Text='<%# Bind("CUSTOMER_CONTACTNO") %>' />
                    <br />
                    CUSTOMER_EMAIL:
                    <asp:TextBox ID="CUSTOMER_EMAILTextBox" runat="server" Text='<%# Bind("CUSTOMER_EMAIL") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    CUSTOMER_ID:
                    <asp:Label ID="CUSTOMER_IDLabel" runat="server" Text='<%# Eval("CUSTOMER_ID") %>' />
                    <br />
                    CUSTOMER_NAME:
                    <asp:Label ID="CUSTOMER_NAMELabel" runat="server" Text='<%# Bind("CUSTOMER_NAME") %>' />
                    <br />
                    CUSTOMER_ADDRESS:
                    <asp:Label ID="CUSTOMER_ADDRESSLabel" runat="server" Text='<%# Bind("CUSTOMER_ADDRESS") %>' />
                    <br />
                    CUSTOMER_CONTACTNO:
                    <asp:Label ID="CUSTOMER_CONTACTNOLabel" runat="server" Text='<%# Bind("CUSTOMER_CONTACTNO") %>' />
                    <br />
                    CUSTOMER_EMAIL:
                    <asp:Label ID="CUSTOMER_EMAILLabel" runat="server" Text='<%# Bind("CUSTOMER_EMAIL") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
        </div>
        
        <div class="container-grid" style="padding: 10px; margin: 10px; border: medium ridge #808080">
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="CUSTOMER_ID" CellPadding="1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="#669999" BorderColor="#006666" BorderStyle="Double" BorderWidth="2px" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="CUSTOMER_ID" HeaderText="CUSTOMER_ID" ReadOnly="True" SortExpression="CUSTOMER_ID" />
                    <asp:BoundField DataField="CUSTOMER_NAME" HeaderText="CUSTOMER_NAME" SortExpression="CUSTOMER_NAME" />
                    <asp:BoundField DataField="CUSTOMER_ADDRESS" HeaderText="CUSTOMER_ADDRESS" SortExpression="CUSTOMER_ADDRESS" />
                    <asp:BoundField DataField="CUSTOMER_CONTACTNO" HeaderText="CUSTOMER_CONTACTNO" SortExpression="CUSTOMER_CONTACTNO" />
                    <asp:BoundField DataField="CUSTOMER_EMAIL" HeaderText="CUSTOMER_EMAIL" SortExpression="CUSTOMER_EMAIL" />
                </Columns>
            <EditRowStyle BorderColor="#009999" BorderStyle="Solid" ForeColor="#CC0000" />
        </asp:GridView>
        </div>
        
    </div>
</asp:Content>
