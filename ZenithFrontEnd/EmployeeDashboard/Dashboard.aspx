<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="ZenithFrontEnd.EmployeeDashboard.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>C&B Packaging - Dashboard</title>
      <link rel="stylesheet" href="css/main.css" />
     <style type="text/css">
        .auto-style1 {
            margin-left: 90px;
        }
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pageTitle">
      <h1 >ORDERS</h1>
    </div>
          <div id="bodyDiv">

              <asp:GridView ID="GridViewOrder"  class="auto-style1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="OrderId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridViewOrder_SelectedIndexChanged">
                  <Columns>
                      <asp:BoundField DataField="OrderId" HeaderText="OrderId" ReadOnly="True" SortExpression="OrderId" />
                      <asp:BoundField DataField="CusId" HeaderText="CusId" SortExpression="CusId" />
                      <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
                      <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                      <asp:HyperLinkField Text="Get Order Details" DataNavigateUrlFields="OrderId,CusId,Status"
                          DataNavigateUrlFormatString="Orders.aspx?OrderId={0}&CusId={1}&Status={2}" />
                  </Columns>
              </asp:GridView>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ZenithCapstoneDBConnectionString %>" 
                  SelectCommand="SELECT * FROM [Orders]">

              </asp:SqlDataSource>

          </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
