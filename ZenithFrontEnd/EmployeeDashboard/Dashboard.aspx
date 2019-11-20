<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="ZenithFrontEnd.Employee_Dashboard.Dashboard" %>
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
      <p >New Orders</p>
    </div>
 
  
    <div id="bodyDiv">
        
    <asp:GridView  class="auto-style1" ID="GridView1" runat="server" AllowPaging="true" PageSize="10"  AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProductId" DataSourceID="SqlDataSource1" Width="80%" Height="80%">
        <Columns>
            <asp:BoundField DataField="ProductId" HeaderText="Product ID" ReadOnly="True" SortExpression="ProductId" />
            <asp:BoundField DataField="OrderId" HeaderText="Order ID" SortExpression="OrderId" />
            <asp:BoundField DataField="ProdType" HeaderText="Type" SortExpression="ProdType" />
            <asp:BoundField DataField="ProdSize" HeaderText="Size" SortExpression="ProdSize" />
            <asp:BoundField DataField="ProdMaterial" HeaderText="Material" SortExpression="ProdMaterial" />
            <asp:BoundField DataField="ProdQuantity" HeaderText="Quantity" SortExpression="ProdQuantity" />
            <asp:BoundField DataField="ProdBriefDescription" HeaderText="Brief Description" SortExpression="ProdBriefDescription" />
            <asp:BoundField DataField="ProdSideID" HeaderText="Side ID" SortExpression="ProdSideID" />
            <asp:BoundField DataField="ProdFinish" HeaderText="Finish" SortExpression="ProdFinish" />
            <asp:BoundField DataField="ProdWall" HeaderText="Wall" SortExpression="ProdWall" />
            <asp:BoundField DataField="ProdUnitPrice" HeaderText="Unit Price" SortExpression="ProdUnitPrice" />
            <asp:BoundField DataField="ProdImagePath" HeaderText="Image Path" SortExpression="ProdImagePath" />
            <asp:BoundField DataField="ProdTotalPrice" HeaderText="Total Price" SortExpression="ProdTotalPrice" />
            <asp:BoundField DataField="DateInserted" HeaderText="Order Date" SortExpression="DateInserted" />
            <asp:CommandField ButtonType="Button" ShowEditButton="True" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ZenithCapstoneDBConnectionString %>" 
        SelectCommand="SELECT * FROM [Product]"
        UpdateCommand="Update Product Set ProdType=@ProdType, ProdSize=@ProdSize, ProdMaterial=@ProdMaterial, ProdQuantity=@ProdQuantity, ProdBriefDescription=@ProdBriefDescription, ProdSideID=@ProdSideID, ProdFinish=@ProdFinish, ProdWall=@ProdWall, ProdUnitPrice=@ProdUnitPrice, ProdImagePath=@ProdImagePath, ProdTotalPrice=@ProdTotalPrice  Where (ProductId = @ProductId)"
        DeleteCommand="Delete [Product] Where [ProductId] = @ProductId">
    </asp:SqlDataSource>
   </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
