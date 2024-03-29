﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductReview.aspx.cs" Inherits="ZenithFrontEnd.ProductReview" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>C&B Packaging - Specification</title>

    <link rel="stylesheet" href="css/main.css" />
    <style type="text/css">
        .auto-style13 {
            font-weight: bold;
            font-size: 1.3em;
            margin-left: 260px;
            width: 899px;
        }

        .auto-style15 {
            margin-left: 9px;
            width: 9%;
            height: 255px;
        }

        .auto-style0 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            border-radius: 5px;
            height: 30px;
            width: 130px;
            background-color: steelblue;
            color: white;
            outline: none;
            user-select: none;
            float: left;
            margin-left: 57px;
        }

        .auto-style18 {
            width: 3%;
        }

        .auto-style19 {
            width: 114%;
            margin-left: 0px;
        }

        .auto-style5 {
            width: 29px;
            height: 26px;
        }

        .auto-style20 {
            width: 58%;
        }
    </style>
</head>
<body>
    <div class="logoDiv"><img id="logo" src="images/wp-logo.jpg" alt="CB Logo" /><asp:Label ID="welcomeLabel" CSSClass="welcomeLabel" runat="server" Text="Welcome, Guest"></asp:Label></div>
    <ul class="mainNav">
        <li><a href="https://cbdisplaypac.ca/">
            <img class="nav-icon" src="images/house-16.png" />HOME</a></li>
        <li class="navbar-right"><a href="ShoppingCart/ViewCart.aspx">
            <img class="nav-icon" src="images/cart-16.png" />CART</a></li>
        <li class="navbar-right"><a href="Login.aspx">
            <img class="nav-icon" src="images/user-16.png" />LOGIN</a></li>
        <li class="navbar-right"><a href="Product.aspx">
            <img class="nav-icon" src="images/BOX-16.png" />BUILD</a></li>
    </ul>
    <div id="errorMessages" runat="server">
    </div>



    <div class="pageTitle">
        <p>YOUR PRODUCT SPECIFICATION</p>
    </div>


    <div id="bodyDiv" class="auto-style20">
        <form id="form1" runat="server">
            <div id="panelDiv" class="panelDiv">
                Your Order Progress:<br />
                <br />
                <asp:ImageButton class="auto-style2" ID="boxType" runat="server" Height="203px" Width="222px" /> <br>
                <img alt="" class="auto-style5" src="images/check.jpg" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SIZE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
                <img alt="" class="auto-style5" src="images/check.jpg" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PRINTING&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
                <img alt="" class="auto-style5" src="images/check.jpg" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MATERIAL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
                <img alt="" class="auto-style5" src="images/check.jpg" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FINISH&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
                <img alt="" class="auto-style5" src="images/check.jpg" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WALL TYPE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
                <img alt="" class="auto-style5" src="images/check.jpg" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; QUANTITY&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
                <img alt="" class="auto-style5" src="images/check.jpg" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; IMAGE UPLOAD<br />
            </div>

            <div class="customizeDiv">
                <h1>Your Selection</h1>
                <table class="auto-style19">
                    <tr>
                        <td class="auto-style18" style="font-family: Arial; font-size: medium; color: #4682B4">Size</td>
                        <td>
                            <asp:Label ID="LabelSize" runat="server" Text="Please select Size" Font-Names="Arial" Font-Size="Medium"></asp:Label>
                        </td>
                        <td style="font-family: Arial; font-size: medium; color: #4682B4">Finish </td>
                        <td>
                            <asp:Label ID="LabelFinish" runat="server" Text="Please select Finish" Font-Names="Arial" Font-Size="Medium"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18" style="font-family: Arial; color: #3169C6; font-size: medium">Material</td>
                        <td>
                            <asp:Label ID="LabelMaterial" runat="server" Text="Please select Material" Font-Names="Arial" Font-Size="Medium"></asp:Label>
                        </td>
                        <td style="font-family: Arial; font-size: medium; color: #3169CF">Wall Type</td>
                        <td>
                            <asp:Label ID="LabelWallType" runat="server" Text="Please select WallType" Font-Names="Arial" Font-Size="Medium"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18" style="font-family: Arial; font-size: medium; color: #3169CF">Printing&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td>
                            <asp:Label ID="LabelSides" runat="server" Text="Please select Sides" Font-Names="Arial" Font-Size="Medium"></asp:Label>
                        </td>
                        <td style="font-family: Arial; font-size: medium; color: #3169CF">Quantity </td>
                        <td>
                            <asp:Label ID="LabelQuantity" runat="server" Text="Please select Quantity" Font-Names="Arial" Font-Size="Medium"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" style="font-family: Arial; font-size: medium; color: #3169CF; text-align: center;">Total Price:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="LabelPrice" runat="server" Font-Bold="True" ForeColor="Black"></asp:Label>
                        </td>
                    </tr>
                </table>

                <br />
                <br />
                <asp:Button CssClass="btnGeneral" ID="addToCart" runat="server" Text="ADD TO CART" OnClick="addToCart_Click" Font-Bold="True" Font-Italic="False" Font-Size="Large" Height="35px" />
                <a id="btnBack" href="uploadImage.aspx" class="btnGeneral">BACK</a>
                <a id="btnHelp" href="Help.aspx" class="btnGeneral">HELP</a><br />
            </div>
        </form>
    </div>


    <footer id="contactInfo" role="contentinfo">
        <div>
            <section>
                <div class="footerList">
                    <div></div>
                    <img style="padding-top: 20px;" src="images/footer_logo.jpg" />
                    <div style="margin-top: 10px; margin-bottom: 0px;"></div>
                    <p style="font-size: 0.9em;">We specialize in consumer-focused point of purchase displays, retail packaging and industrial packaging. We have delivered outstanding quality for leading clients across North America for over thirty years.</p>
                    <div></div>
                    <div style="margin-top: 20px; margin-bottom: 0px;"></div>
                </div>
                <div class="footerList">
                    <h4 style="margin-left: 15%; color: white; font-size: 1.2em;" data-fontsize="15" data-lineheight="22">CONTACT US TODAY</h4>
                    <ul class="footerNav">
                        <li>
                            <div>
                                <p>
                                    2560 South Sheridan Way
                                                <br />
                                    Mississauga, ON
                                                <br />
                                    L5J 2M4
                                </p>
                                <br />
                            </div>
                        </li>
                        <li style="width: 100%;">
                            <div style="color: white;">Office: 905-823-7770</div>
                        </li>
                        <li style="width: 100%;">
                            <div style="color: white;">Fax: 905-823-5239</div>
                        </li>
                        <li style="width: 100%;">
                            <div style="color: white;">Toll Free: 1-800-465-8607</div>
                        </li>
                    </ul>
                </div>
            </section>
        </div>
        <div>
            <section>
                <div class="footerList">
                    <ul class="footerNav" style="margin-top: 35px">
                        <li>
                            <div>Customer Service &amp; Sales: <a href="mailto:sales@cbdisplaypac.ca">sales@cbdisplaypac.ca</a></div>
                        </li>
                        <li>
                            <div>Career Opportunities: <a href="mailto:careers@cbdisplaypac.ca">careers@cbdisplaypac.ca </a></div>
                        </li>
                        <li>
                            <div>General Information: <a href="mailto:info@cbdisplaypac.ca">info@cbdisplaypac.ca </a></div>
                        </li>
                    </ul>
                </div>
            </section>
        </div>
        <div class="footerList">
            <h4 data-fontsize="15" data-lineheight="22">FIND US</h4>
            <div>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d23148.141671281002!2d-79.67670566217575!3d43.51239577912643!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x882b43780d2c6641%3A0xb5759ab904624153!2sC%26B+Display+Packaging+Inc!5e0!3m2!1sen!2sca!4v1520034090910" style="border: 0; width: 100%; height: 100%;"></iframe>
            </div>
            <div style="clear: both;"></div>
        </div>
    </footer>
    <footer>
        <div>
            <div id="copyright-area">
                <div>COPYRIGHT 2019. <a style="text-decoration: none; color: lightgrey;" href="http://www.cbdisplaypac.ca" target="_blank">C&amp;B Display Packaging Inc.</a></div>
            </div>
        </div>
    </footer>
</body>
</html>
