<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ZenithFrontEnd.Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>C&B Packaging - Login</title>

    <link rel="stylesheet" href="css/main.css" />
</head>
<body>
    <img id="logo" src="images/wp-logo.jpg" alt="CB Logo" />
    <ul>
        <li><a href="https://cbdisplaypac.ca/">
            <img class="nav-icon" src="images/house-16.png" />HOME</a></li>
        <li class="navbar-right"><a href="Cart.aspx">
            <img class="nav-icon" src="images/cart-16.png" />CART</a></li>
        <li class="navbar-right"><a href="Login.aspx">
            <img class="nav-icon" src="images/user-16.png" />LOGIN</a></li>
        <li class="navbar-right"><a href="Product.aspx">
            <img class="nav-icon" src="images/BOX-16.png" />BUILD</a></li>
    </ul>
    <div id="errorMessages" runat="server">
    </div>

    <div class="pageTitle">
        <p>LOGIN OR CREATE AN ACCOUNT</p>
    </div>

    <div id="loginDiv">
        <form id="form1" runat="server">
            <div>
                <p class="subTitle">RETURNING CUSTOMERS</p>
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
        </form>
    </div>
    <div id="createDiv">
        <p class="subTitle">NEW CUSTOMERS</p>
        <p>By creating an account with us, you will be able to proceed through the checkout process faster for future orders. Account will also allow you to store multiple payment and shipping addresses, view and track your orders and more.</p>

        <a id="btnCreate" href="CreateAccount.aspx">CREATE AN ACCOUNT</a>
    </div>


</body>
</html>
