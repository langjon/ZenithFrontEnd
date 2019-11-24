<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderHistory.aspx.cs" Inherits="ZenithFrontEnd.UserLogin.OrderHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="orderHistory">
        <div>
            <h1>ORDER HISTORY</h1>
        </div>

        <asp:DataList ID="orderHistoryTable" runat="server" DataKeyField="ProductId" DataSourceID="OrderHistoryQuery" OnSelectedIndexChanged="orderHistoryTable_SelectedIndexChanged">
            <HeaderTemplate>
                Image
                <td>Product ID</td>
                <td>Type</td>
                <td>Size</td>
                <td>Material</td>
                <td>Print Sides</td>
                <td>Finish</td>
                <td>Wall Type</td>
                <td>Quantity</td>
                <td>Price</td>
            </HeaderTemplate>
            <ItemTemplate>
               ORDER:
                    <th colspan="7"style="text-align:left;"><asp:Label ID="OrderIdLabel" runat="server" Text='<%# Eval("OrderId") %>' /></th><th colspan="2"><asp:Label ID="DateInsertedLabel" runat="server" Text='<%# Eval("DateInserted") %>' /></th>
                <tr>
                    <td style="width:81px;">
                        <asp:Image ID="Image1" runat="server" class="auto-style1" Height="90px" Width="80px" ImageUrl='<%# Eval("ProdImagePath") %>' /></td>
                    <td>
                        <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' /></td>
                    <td>
                        <asp:Label ID="ProdTypeLabel" runat="server" Text='<%# Eval("ProdType") %>' /></td>
                    <td>
                        <asp:Label ID="ProdSizeLabel" runat="server" Text='<%# Eval("ProdSize") %>' /></td>
                    <td>
                        <asp:Label ID="ProdMaterialLabel" runat="server" Text='<%# Eval("ProdMaterial") %>' /></td>
                    <td>
                        <asp:Label ID="ProdQuantityLabel" runat="server" Text='<%# Eval("ProdQuantity") %>' /></td>
                    <td>
                        <asp:Label ID="ProdSideIDLabel" runat="server" Text='<%# Eval("ProdSideID") %>' /></td>
                    <td>
                        <asp:Label ID="ProdFinishLabel" runat="server" Text='<%# Eval("ProdFinish") %>' /></td>
                    <td>
                        <asp:Label ID="ProdWallLabel" runat="server" Text='<%# Eval("ProdWall") %>' /></td>
                    <td>
                        <asp:Label ID="ProdTotalPriceLabel" runat="server" Text='<%# Eval("ProdTotalPrice", "{0:C}") %>' /></td>
                    
                </tr>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="OrderHistoryQuery" runat="server" ConnectionString="<%$ ConnectionStrings:ZenithCapstoneDBConnectionString %>" SelectCommand="SELECT * FROM Product WHERE OrderId IN (SELECT OrderId FROM Orders WHERE CusId = @cusID) ORDER BY DateInserted DESC">
            <SelectParameters>
                <asp:SessionParameter Name="cusID" SessionField="UserID" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
