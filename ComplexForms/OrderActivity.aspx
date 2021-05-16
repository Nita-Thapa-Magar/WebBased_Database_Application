<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderActivity.aspx.cs" Inherits="_18030819_Nita_Thapa_Magar.ComplexForms.OrderActivity" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 style="font-style: normal; font-weight: bold; padding: 10px; margin: 10px; text-align: center;">Order Activity Details</h1>

    <div style="padding: 10px; margin: 10px; text-align: center; border: medium groove #808080; background-color: #9DE0AD;">
        <asp:Label ID="Label1" runat="server" Text="Enter the contact no:" CssClass="lblContactNo"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*The input field for contact no is empty." ForeColor="Red"></asp:RequiredFieldValidator>
        <br />

        <asp:Label ID="Label2" runat="server" Text="Enter the email address:" CssClass="lblEmailAddress"></asp:Label>
         <br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
         <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*The input field for email address is empty." ForeColor="Red"></asp:RequiredFieldValidator>
         <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Please enter the valid email address." ForeColor="Red" ValidationExpression="[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?"></asp:RegularExpressionValidator>
        
        <div style="padding: 10px; margin: 10px; text-align: center">
            <asp:Button ID="Button1" runat="server" Text="SUBMIT" Width="105px" />
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM (SELECT r.RESTAURANT_NAME, COUNT(r.RESTAURANT_NAME) AS number_of_dishes FROM BILL b INNER JOIN CUSTOMER &quot;c&quot; ON b.CUSTOMER_ID = &quot;c&quot;.CUSTOMER_ID INNER JOIN ORDER_DETAILS o ON b.SN = o.SN INNER JOIN AVAILABILITY &quot;a&quot; ON o.AVAILABILITY_ID = &quot;a&quot;.AVAILABILITY_ID INNER JOIN FoodMenu m ON &quot;a&quot;.FOODMENU_ID = m.FOODMENU_ID INNER JOIN RESTAURANT r ON m.RESTAURANT_ID = r.RESTAURANT_ID WHERE (b.DateTime) &gt; (SYSDATE - 30) AND ((&quot;c&quot;.CUSTOMER_CONTACTNO = :ContactNo)AND (&quot;c&quot;.CUSTOMER_EMAIL = :EmailAddress)) GROUP BY r.RESTAURANT_NAME ORDER BY COUNT(r.RESTAURANT_NAME) DESC) WHERE rownum &lt;=5">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="ContactNo" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox2" Name="EmailAddress" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>

    <div style="padding: 10px; margin: 20px">
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False">
         <HeaderStyle BackColor="Black" ForeColor="#FFFFCC" />
        <AlternatingRowStyle BackColor="#669999" BorderColor="#006666" BorderStyle="Double" BorderWidth="2px" />
         <Columns>
             <asp:BoundField DataField="RESTAURANT_NAME" HeaderText="RESTAURANT_NAME" ReadOnly="True" SortExpression="RESTAURANT_NAME" />
             <asp:BoundField DataField="NUMBER_OF_DISHES" HeaderText="NUMBER_OF_DISHES" ReadOnly="True" SortExpression="NUMBER_OF_DISHES" />
         </Columns>
        <EditRowStyle BorderColor="#009999" BorderStyle="Solid" ForeColor="#CC0000" />
    </asp:GridView>
    </div>

    </asp:Content>
