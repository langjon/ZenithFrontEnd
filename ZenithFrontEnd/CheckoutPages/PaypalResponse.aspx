<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PaypalResponse.aspx.cs" Inherits="ZenithFrontEnd.CheckoutPages.PaypalResponse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="txnID" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="payerEmailText" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="statusText" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="receiverEmailText" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="amountText" runat="server" Text="Label"></asp:Label>
    <p><%#Eval("transactionID") %></p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
