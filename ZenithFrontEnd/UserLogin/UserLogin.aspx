<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="ZenithFrontEnd.UserLogin.UserLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="errorMessages" runat="server">
    </div>
    <div id="mainBodyDiv">

        <div class="pageTitle">
            <p>LOGIN OR CREATE AN ACCOUNT</p>
        </div>

        <div id="loginDiv">
            
                <div>
                    <p class="subTitle">RETURNING USERS</p>
                    <p>If you already have an account with us, please log in below.</p>
                    <label for="txtUsername">USERNAME</label>
                    <br />
                    <asp:TextBox CssClass="textbox" ID="txtUsername" runat="server" required="required"></asp:TextBox>
                    <br />
                    <br />
                    <label for="txtpwd">PASSWORD</label>
                    <br />
                    <asp:TextBox TextMode="Password" CssClass="textbox" ID="txtpwd" runat="server" required="required"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button CssClass="btnLogin" ID="btnSubmit" runat="server" OnClick="Login_Click" Text="LOG IN" />
                </div>
           
        </div>
        <div id="createDiv">
            <p class="subTitle">NEW CUSTOMERS</p>
            <p>By creating an account with us, you will be able to proceed through the checkout process faster for future orders. Account will also allow you to store multiple payment and shipping addresses, view and track your orders and more.</p>

            <a class="btnCreate" href="NewAccount.aspx">CREATE AN ACCOUNT</a>
        </div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
