<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="ZenithFrontEnd.index" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>C&B Packaging - Products</title>

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
        <p>PRODUCTS</p>
    </div>

    <div id="output" runat="server">
    </div>



    <form id="form1" runat="server">
        <div>
        </div>
    </form>

    
    <table style="width: 99.5%; text-align: center;">
	
        <tr>
            <td>
			<h3>BOX</h3>
                   <a href="boxSize.htm"><img src="images/BOX-HSC.jpg" width="200" height="204"></a>
            </td>
            <td></td>
            <td>
                <h3>RETAIL READY</h3>
				<a href="../html-link.htm"><img src="images/BOX-4-Sided-Rollover-Tray.jpg" width="200" height="204"></a>
            </td>
            <td></td>
            <td>
                <h3> DISPLAY</h3>
                 <a href="../html-link.htm"><img src="images/Display.jpg" width="200" height="204"></a>
            </td>
        </tr>
        <br />
    </table>
    <br />
    <br />
    <h4 style="text-align: center;"><a href="~/api.html">HELP</a></p></h4>
    

	<h4><a href="~/api.html">GET QUOTATION</a></p></h4>
    
</body>
</html>

