<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerOrderDetails.aspx.cs" Inherits="_18030819_Nita_Thapa_Magar.CustomerOrderDetails" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1 style="font-style: normal; font-weight: bold; padding: 10px; margin: 10px; text-align: center;">Customer Order Details</h1>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT o.ORDER_NUMBER, d.DISH_NAME, r.RESTAURANT_NAME, o.ORDER_UNIT, m.DISH_RATE, o.LINE_TOTAL, &quot;a&quot;.ADDRESS_NAME, &quot;a&quot;.LATITUDE, &quot;a&quot;.LONGITUDE, b.DATETIME FROM DATABASECW1.BILL b INNER JOIN DATABASECW1.CUSTOMER &quot;c&quot; ON b.CUSTOMER_ID = &quot;c&quot;.CUSTOMER_ID INNER JOIN DATABASECW1.ORDER_DETAILS o ON b.SN = o.SN INNER JOIN DATABASECW1.ADDRESS &quot;a&quot; ON b.ADDRESS_ID = &quot;a&quot;.ADDRESS_ID INNER JOIN DATABASECW1.AVAILABILITY ab ON o.AVAILABILITY_ID = ab.AVAILABILITY_ID INNER JOIN DATABASECW1.FOODMENU m ON ab.FOODMENU_ID = m.FOODMENU_ID INNER JOIN DATABASECW1.DISH d ON d.DISH_CODE = m.DISH_CODE INNER JOIN DATABASECW1.RESTAURANT r ON r.RESTAURANT_ID = m.RESTAURANT_ID WHERE (&quot;c&quot;.CUSTOMER_CONTACTNO = :ContactNo) AND (&quot;c&quot;.CUSTOMER_EMAIL = :EmailAddress)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ContactNo" Name="ContactNo" PropertyName="Text" />
            <asp:ControlParameter ControlID="Email" Name="EmailAddress" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    
     <div class="container-textbox" style="">
    <div style="padding: 10px; margin: 10px; text-align: center; border: medium groove #808080; background-color: #9DE0AD;">
        <asp:Label ID="Label1" runat="server" Text="Enter the contact no:" CssClass="lblContactNo"></asp:Label>
        <br />
        <asp:TextBox ID="ContactNo" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*The input for contact no is empty." ControlToValidate="ContactNo" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Enter the email address:" CssClass="lblEmail"></asp:Label>
        <br />
        <asp:TextBox ID="Email" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Email" ErrorMessage="*The input field for email address is empty." ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ErrorMessage="*Please enter the valid email address." ForeColor="Red" ValidationExpression="[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?"></asp:RegularExpressionValidator>
    <br />
    <asp:Button ID="Button1" runat="server" Text="SUBMIT" />
    </div>

    <div style="padding: 10px; margin: 20px">
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" Width="399px" AutoGenerateColumns="False">
            <HeaderStyle BackColor="Black" ForeColor="#FFFFCC" />
         <AlternatingRowStyle BackColor="#669999" BorderColor="#006666" BorderStyle="Double" BorderWidth="2px" />
            <Columns>
                <asp:BoundField DataField="ORDER_NUMBER" HeaderText="ORDER_NUMBER" SortExpression="ORDER_NUMBER" />
                <asp:BoundField DataField="DISH_NAME" HeaderText="DISH_NAME" SortExpression="DISH_NAME" />
                <asp:BoundField DataField="RESTAURANT_NAME" HeaderText="RESTAURANT_NAME" SortExpression="RESTAURANT_NAME" />
                <asp:BoundField DataField="ORDER_UNIT" HeaderText="ORDER_UNIT" SortExpression="ORDER_UNIT" />
                <asp:BoundField DataField="DISH_RATE" HeaderText="DISH_RATE" SortExpression="DISH_RATE" />
                <asp:BoundField DataField="LINE_TOTAL" HeaderText="LINE_TOTAL" SortExpression="LINE_TOTAL" />
                <asp:BoundField DataField="ADDRESS_NAME" HeaderText="ADDRESS_NAME" SortExpression="ADDRESS_NAME" />
                <asp:BoundField DataField="LATITUDE" HeaderText="LATITUDE" SortExpression="LATITUDE" />
                <asp:BoundField DataField="LONGITUDE" HeaderText="LONGITUDE" SortExpression="LONGITUDE" />
                <asp:BoundField DataField="DATETIME" HeaderText="DATETIME" SortExpression="DATETIME" />
            </Columns>
            <EditRowStyle BorderColor="#009999" BorderStyle="Solid" ForeColor="#CC0000" />
        </asp:GridView>
    </div>   
    </div>
</asp:Content>