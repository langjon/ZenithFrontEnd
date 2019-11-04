<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateTry1.aspx.cs" Inherits="ZenithFrontEnd.ShoppingCart.UpdateTry1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  
    <div class="pageTitle">
            <p>SHOPPING CART</p>
        </div>
    <div id="cartDiv">
        <asp:DataList ID="cartListTable" runat="server">
            <HeaderTemplate>
                <td>Image</td>
                <td>Type</td>
                <td>Size</td>
                <td>Material</td>
                <td>Printing Sides</td>
                <td>Finish</td>
                <td>Wall Type</td>
                <td>Quantity</td>
                <td>Unit Price</td>
                <td>Price</td>
                <td>Date</td>
                <td>&nbsp</td>
            </HeaderTemplate>
            <ItemTemplate>
                <td>
                    <asp:Image ID="Image1" runat="server" class="auto-style1" Height="90px" Width="80px" ImageUrl='<%#Eval("prodImage") %>' /></td>
                <td><%#Eval("prodType") %></td>
                <td><%#Eval("prodSize") %></td>
                <td><%#Eval("prodMaterial") %></td>
                <td><%#Eval("prodFinish") %></td>
                <td><%#Eval("prodWallType") %></td>
                <td><%#Eval("prodPrintSides") %></td>
                <td>
                   <asp:TextBox ID="txtQty" runat="server" Width="50px" MaxLength="5" Value='<%#Eval("id") %>' Text='<%#Eval("prodQuantity") %>' AutoPostBack="true"  ></asp:TextBox> 
                    <a href="UpdateCart.aspx?id=<%#Eval("id") %>&qty=1000">Update</a>
                </td>
                <td><%#Eval("prodUnitPrice") %></td>
                <td><%#Eval("prodPrice") %></td>
                <td><%#Eval("prodDateCreated") %></td>
                <td><a href="DeleteCart.aspx?id=<%#Eval("id") %>">Delete</a></td>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <asp:DataList ID="DataList1" runat="server">
    </asp:DataList>
    <br />
    
    <asp:Label ID="lblTotal" runat="server" EnableViewState="false"></asp:Label>
    <div id="cartBtnDiv">
        <a class="btnGeneral" href="ViewCart.aspx">Update</a>
        <a class="btnGeneral" href="../Product.aspx">Cancel</a>
    </div>
</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
