<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomersDetails.aspx.cs" Inherits="ZenithFrontEnd.EmployeeDashboard.CustomersDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>C&B Packaging - Dashboard</title>
    <link rel="stylesheet" href="css/main.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div class="pageTitle">
      <p >Customers Details</p>
    </div>
    <div id="bodyDiv">
        <asp:GridView  class="orderGrid" ID="CustomerGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CusID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="CusID" HeaderText="CusID" InsertVisible="False" ReadOnly="True" SortExpression="CusID" />
                <asp:BoundField DataField="CusFirstName" HeaderText="CusFirstName" SortExpression="CusFirstName" />
                <asp:BoundField DataField="CusLastName" HeaderText="CusLastName" SortExpression="CusLastName" />
                <asp:BoundField DataField="CusPhone" HeaderText="CusPhone" SortExpression="CusPhone" />
                <asp:BoundField DataField="CusEmail" HeaderText="CusEmail" SortExpression="CusEmail" />
                <asp:BoundField DataField="CusCompany" HeaderText="CusCompany" SortExpression="CusCompany" />
                <asp:BoundField DataField="CusStreetAddress" HeaderText="CusStreetAddress" SortExpression="CusStreetAddress" />
                <asp:BoundField DataField="CusProvince" HeaderText="CusProvince" SortExpression="CusProvince" />
                <asp:BoundField DataField="CusCountry" HeaderText="CusCountry" SortExpression="CusCountry" />
                <asp:BoundField DataField="CusPostalCode" HeaderText="CusPostalCode" SortExpression="CusPostalCode" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ZenithCapstoneDBConnectionString %>" DeleteCommand="DELETE FROM [Customer] WHERE [CusID] = @original_CusID AND [CusFirstName] = @original_CusFirstName AND [CusLastName] = @original_CusLastName AND [CusPhone] = @original_CusPhone AND [CusEmail] = @original_CusEmail AND (([CusCompany] = @original_CusCompany) OR ([CusCompany] IS NULL AND @original_CusCompany IS NULL)) AND [CusStreetAddress] = @original_CusStreetAddress AND (([CusProvince] = @original_CusProvince) OR ([CusProvince] IS NULL AND @original_CusProvince IS NULL)) AND (([CusCountry] = @original_CusCountry) OR ([CusCountry] IS NULL AND @original_CusCountry IS NULL)) AND [CusPostalCode] = @original_CusPostalCode" InsertCommand="INSERT INTO [Customer] ([CusFirstName], [CusLastName], [CusPhone], [CusEmail], [CusCompany], [CusStreetAddress], [CusProvince], [CusCountry], [CusPostalCode]) VALUES (@CusFirstName, @CusLastName, @CusPhone, @CusEmail, @CusCompany, @CusStreetAddress, @CusProvince, @CusCountry, @CusPostalCode)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Customer]" UpdateCommand="UPDATE [Customer] SET [CusFirstName] = @CusFirstName, [CusLastName] = @CusLastName, [CusPhone] = @CusPhone, [CusEmail] = @CusEmail, [CusCompany] = @CusCompany, [CusStreetAddress] = @CusStreetAddress, [CusProvince] = @CusProvince, [CusCountry] = @CusCountry, [CusPostalCode] = @CusPostalCode WHERE [CusID] = @original_CusID AND [CusFirstName] = @original_CusFirstName AND [CusLastName] = @original_CusLastName AND [CusPhone] = @original_CusPhone AND [CusEmail] = @original_CusEmail AND (([CusCompany] = @original_CusCompany) OR ([CusCompany] IS NULL AND @original_CusCompany IS NULL)) AND [CusStreetAddress] = @original_CusStreetAddress AND (([CusProvince] = @original_CusProvince) OR ([CusProvince] IS NULL AND @original_CusProvince IS NULL)) AND (([CusCountry] = @original_CusCountry) OR ([CusCountry] IS NULL AND @original_CusCountry IS NULL)) AND [CusPostalCode] = @original_CusPostalCode">
            <DeleteParameters>
                <asp:Parameter Name="original_CusID" Type="Decimal" />
                <asp:Parameter Name="original_CusFirstName" Type="String" />
                <asp:Parameter Name="original_CusLastName" Type="String" />
                <asp:Parameter Name="original_CusPhone" Type="String" />
                <asp:Parameter Name="original_CusEmail" Type="String" />
                <asp:Parameter Name="original_CusCompany" Type="String" />
                <asp:Parameter Name="original_CusStreetAddress" Type="String" />
                <asp:Parameter Name="original_CusProvince" Type="String" />
                <asp:Parameter Name="original_CusCountry" Type="String" />
                <asp:Parameter Name="original_CusPostalCode" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CusFirstName" Type="String" />
                <asp:Parameter Name="CusLastName" Type="String" />
                <asp:Parameter Name="CusPhone" Type="String" />
                <asp:Parameter Name="CusEmail" Type="String" />
                <asp:Parameter Name="CusCompany" Type="String" />
                <asp:Parameter Name="CusStreetAddress" Type="String" />
                <asp:Parameter Name="CusProvince" Type="String" />
                <asp:Parameter Name="CusCountry" Type="String" />
                <asp:Parameter Name="CusPostalCode" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CusFirstName" Type="String" />
                <asp:Parameter Name="CusLastName" Type="String" />
                <asp:Parameter Name="CusPhone" Type="String" />
                <asp:Parameter Name="CusEmail" Type="String" />
                <asp:Parameter Name="CusCompany" Type="String" />
                <asp:Parameter Name="CusStreetAddress" Type="String" />
                <asp:Parameter Name="CusProvince" Type="String" />
                <asp:Parameter Name="CusCountry" Type="String" />
                <asp:Parameter Name="CusPostalCode" Type="String" />
                <asp:Parameter Name="original_CusID" Type="Decimal" />
                <asp:Parameter Name="original_CusFirstName" Type="String" />
                <asp:Parameter Name="original_CusLastName" Type="String" />
                <asp:Parameter Name="original_CusPhone" Type="String" />
                <asp:Parameter Name="original_CusEmail" Type="String" />
                <asp:Parameter Name="original_CusCompany" Type="String" />
                <asp:Parameter Name="original_CusStreetAddress" Type="String" />
                <asp:Parameter Name="original_CusProvince" Type="String" />
                <asp:Parameter Name="original_CusCountry" Type="String" />
                <asp:Parameter Name="original_CusPostalCode" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
