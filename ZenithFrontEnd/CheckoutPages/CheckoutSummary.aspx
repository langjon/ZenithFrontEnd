<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckoutSummary.aspx.cs" Inherits="ZenithFrontEnd.CheckoutPages.CheckoutSummary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pageTitle">
        <p>ORDER SUMMARY</p>
    </div>

    <div id="shippingSummary">
        <h2>SHIPPING INFO</h2>
        <table runat="server">
            <tr>
                <td>First Name: </td>
                <td id="txtFirstName"></td>
            </tr>
            <tr>
                <td>Last Name: </td>
                <td id="txtLastName"></td>
            </tr>
            <tr>
                <td>Phone: </td>
                <td id="txtPhone"></td>
            </tr>
            <tr>
                <td>Email: </td>
                <td id="txtEmail"></td>
            </tr>
            <tr>
                <td>Company: </td>
                <td id="txtCompany"></td>
            </tr>
            <tr>
                <td>Street Address: </td>
                <td id="txtStAddress"></td>
            </tr>
            <tr>
                <td>Province/State: </td>
                <td id="dropProvince"></td>
            </tr>
            <tr>
                <td>Country: </td>
                <td id="dropCountry"></td>
            </tr>
            <tr>
                <td>Postal/ZIP: </td>
                <td id="txtPostal"></td>
            </tr>
        </table>
    </div>
    <div>
        <div id="orderSummary" style="background-color:steelblue">
            <div>
                <h2>ORDER SUMMARY</h2>
                <p id="summaryOrderID" runat="server"></p>
                <p id="summaryDate" runat="server"></p>
            </div>

            <asp:DataList ID="orderSummaryTable" runat="server" DataKeyField="ProductId" DataSourceID="ProductDataSource">
                <HeaderTemplate>
                    Image
                        <td>ProductID</td>
                    <td>Box Type</td>
                    <td>Size</td>
                    <td>Material</td>
                    <td>Finish</td>
                    <td>Wall Type</td>
                    <td>Quantity</td>
                    <td>Price</td>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Image ID="ProdImagePathLabel" runat="server" class="auto-style1" Height="90px" Width="80px" ImageUrl='<%# Eval("ProdImagePath") %>' />
                    <td>
                        <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' /></td>
                    <td>
                        <asp:Label ID="ProdTypeLabel" runat="server" Text='<%# Eval("ProdType") %>' /></td>
                    <td>
                        <asp:Label ID="ProdSizeLabel" runat="server" Text='<%# Eval("ProdSize") %>' /></td>
                    <td>
                        <asp:Label ID="ProdMaterialLabel" runat="server" Text='<%# Eval("ProdMaterial") %>' /></td>
                    <td>
                        <asp:Label ID="ProdFinishLabel" runat="server" Text='<%# Eval("ProdFinish") %>' /></td>
                    <td>
                        <asp:Label ID="ProdWallLabel" runat="server" Text='<%# Eval("ProdWall") %>' /></td>
                    <td>
                        <asp:Label ID="ProdQuantityLabel" runat="server" Text='<%# Eval("ProdQuantity") %>' /></td>
                    <td>
                        <asp:Label ID="ProdTotalPriceLabel" runat="server" Text='<%# Eval("ProdTotalPrice") %>' /></td>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="ProductDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ZenithCapstoneDBConnectionString %>" SelectCommand="SELECT * FROM Product WHERE OrderId = @OrderID;">
                <SelectParameters>
                    <asp:SessionParameter Name="OrderID" SessionField="orderID" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <asp:Button ID="btnReturn" CssClass="btnGeneral" OnClick="Return_Click" runat="server" Text="RETURN" style="margin-right: 5%; margin-top: 20px;"/>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
