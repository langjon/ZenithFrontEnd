<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductReview.aspx.cs" Inherits="ZenithFrontEnd.ProductReview" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>C&B Packaging - Login</title>

    <link rel="stylesheet" href="css/main.css" />
    <style type="text/css">
        .auto-style2 {
            font-weight: bold;
            font-size: 1.3em;
            margin-left: 258px;
        }
        .auto-style9 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            border-radius: 5px;
            height: 34px;
            width: 104px;
            background-color: steelblue;
            color: white;
            outline: none;
            user-select: none;
            float: right;
            margin-left: 55px;
            margin-right: 94px;
        }
        .auto-style10 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            border-radius: 5px;
            height: 30px;
            width: 68px;
            background-color: steelblue;
            color: white;
            outline: none;
            user-select: none;
            float: right;
            margin-left: 55px;
            margin-right: 94px;
        }
        .auto-style11 {
            font-weight: bold;
            font-size: 1.3em;
            margin-left: 295px;
            width: 901px;
        }
        .auto-style12 {
            font-weight: bold;
            font-size: 1.3em;
            margin-left: 298px;
            width: 955px;
        }
        .auto-style13 {
            font-weight: bold;
            font-size: 1.3em;
            margin-left: 350px;
        }
        .auto-style14 {
            font-weight: bold;
            font-size: 1.3em;
            margin-left: 297px;
            width: 900px;
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
        .auto-style15 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            border-radius: 5px;
            height: 27px;
            width: 97px;
            background-color: steelblue;
            color: white;
            outline: none;
            user-select: none;
            float: left;
            margin-left: 57px;
            top: auto;
        }
    </style>
    </head>
<body>
    <img id="logo" src="images/wp-logo.jpg" alt="CB Logo" />
    <ul class="mainNav">
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
    <div style="height: 700px">

        <div class="pageTitle">
            <p>YOUR PRODUCT SPECIFICATION</p>
            <p>&nbsp;</p>
        </div>

        <div id="prodSpec">
            <form id="form1" runat="server">
                <div style="font-size: large; font-weight: bold">
                    
                   
                        <asp:ImageButton class="auto-style2" ID="boxType" runat="server" Height="230px" Width="247px"/>
                  
                    <p class="auto-style11">Size&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="LabelSize"  runat="server" Text="Please select Size"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Material&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="LabelMaterial" runat="server" Text="Please select Material"></asp:Label>
&nbsp;&nbsp;
                    </p>
                    <p class="auto-style14">Sides&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="LabelSides" runat="server" Text="Please select Sides"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Finish&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                         <asp:Label ID="LabelFinish" runat="server" Text="Please select Finish"></asp:Label>
&nbsp;&nbsp;
                    </p>
                    <p class="auto-style12">Wall Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="LabelWallType" runat="server" Text="Please select WallType"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quantity&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="LabelQuantity" runat="server" Text="Please select Quantity"></asp:Label>
                    </p>
                    <p class="auto-style13">Price&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="LabelPrice" runat="server" Text="Total Price is: "></asp:Label>
                    </p>
                    <p class="auto-style2">&nbsp;&nbsp;&nbsp;
                     </p>
                     <p class="auto-style9">
                         <a id="btnCheckout" href="checkout.aspx"  style="font-size: large; color: #FFFFFF; font-weight: normal; vertical-align: middle; text-align: justify;">  CHECKOUT</a></p>
                     <p class="auto-style10">
                         <a id="btnBack" href="quantity.aspx" class="textbox" style="font-size: large; color: #FFFFFF; font-weight: normal; vertical-align: middle; text-align: center;">BACK</a>
                         </p>
                    <a id="btnHelp" href="Help.aspx"  class="auto-style15" style="padding: inherit; font-size: large; color: #FFFFFF; text-align: center; font-weight: normal; font-family: Arial; ">HELP</a><br />
                     <br />
                     <br />
                     </p>
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
