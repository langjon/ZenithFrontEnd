<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="ZenithFrontEnd.CreateAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>C&B Packaging - Create Account</title>
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

    <div class="pageTitle">
        <p>ACCOUNT CREATION</p>
    </div>

    <form id="createAccountForm" runat="server">
        <div id="loginDiv">
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
            <label for="txtpwd">CONFIRM PASSWORD</label>
            <br />
            <asp:TextBox TextMode="Password" CssClass="textbox" ID="textConfirmpwd" runat="server" required="required"></asp:TextBox>
            <br />
            <br />
            <label for="txtpwd">FIRST NAME</label>
            <br />
            <asp:TextBox CssClass="textbox" ID="TextBox2" runat="server" required="required"></asp:TextBox>
            <br />
            <br />
            <label for="txtpwd">LAST NAME</label>
            <br />
            <asp:TextBox CssClass="textbox" ID="TextBox3" runat="server" required="required"></asp:TextBox>
            <br />
            <br />
            <label for="txtpwd">PHONE NUMBER</label>
            <br />
            <asp:TextBox CssClass="textbox" ID="TextBox4" runat="server" required="required"></asp:TextBox>
            <br />
            <br />
            <label for="txtpwd">EMAIL</label>
            <br />
            <asp:TextBox CssClass="textbox" ID="TextBox1" runat="server" required="required"></asp:TextBox>
        </div>
        <div id="addressDiv">
            <label for="txtpwd">COMPANY NAME</label>
            <br />
            <asp:TextBox CssClass="textbox" ID="TextBox5" runat="server" required="required"></asp:TextBox>
            <br />
            <br />
            <label for="txtpwd">STREET ADDRESS</label>
            <br />
            <asp:TextBox CssClass="textbox" ID="TextBox6" runat="server" required="required"></asp:TextBox>
            <br />
            <br />
            <label for="txtpwd">PROVINCE/STATE</label>
            <br />
            <asp:TextBox CssClass="textbox" ID="TextBox7" runat="server" required="required"></asp:TextBox>
            <br />
            <br />
            <label for="txtpwd">COUNTRY</label>
            <br />
            <asp:TextBox CssClass="textbox" ID="TextBox8" runat="server" required="required"></asp:TextBox>
            <br />
            <br />
            <label for="txtpwd">POSTAL/ZIP</label>
            <br />
            <asp:TextBox CssClass="textbox" ID="TextBox9" runat="server" required="required"></asp:TextBox>
            <br />
            <br />
            <asp:Button CssClass="btnLogin" ID="Button1" runat="server" OnClick="Create_Click" Text="CREATE" />
        </div>
    </form>

</body>
</html>
