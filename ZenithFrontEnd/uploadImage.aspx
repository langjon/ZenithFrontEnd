<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uploadImage.aspx.cs" Inherits="ZenithFrontEnd.uploadImage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Image Upload</title>

    <link rel="stylesheet" href="css/main.css" />
    <style type="text/css">
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

        .auto-style7 {
            width: 761px;
            height: 316px;
            margin-left: 134px;
            margin-top: 76px;
            margin-right: 98px;
        }

        .auto-style9 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            border-radius: 5px;
            height: 29px;
            width: 75px;
            background-color: steelblue;
            color: white;
            outline: none;
            user-select: none;
            float: right;
            margin-left: 0px;
            margin-right: 90px;
            margin-top: 0px;
            font-size: large;
            vertical-align: middle;
        }

        .auto-style10 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            border-radius: 5px;
            height: 30px;
            width: 75px;
            background-color: steelblue;
            color: white;
            outline: none;
            user-select: none;
            float: right;
            margin-left: 17px;
            margin-right: 94px;
        }

        .auto-style11 {
            height: 269px;
        }

        .auto-style12 {
            color: #FFFFFF;
        }
    </style>
</head>
<body>

    <img id="logo" src="images/wp-logo.jpg" alt="CB Logo" />
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

    <form id="Form1" method="post" runat="server" class="auto-style7">
        <div class="pageTitle">
            <p>BUILD YOUR BOX</p>
        </div>


        <fieldset>
            <legend>Upload Your Logo/Image</legend>
            <div id="div1" runat="server">
                <br />
                <input type="file" size="65" runat="server" id="FileUpload1">
            </div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
            <%--<asp:Button ID="ButtonMore" runat="server" Text="Add 10 Photos" OnClick="ButtonMore_Click" />--%>
            <br />
        </fieldset>
        <br />

        <div id="div5" runat="server" visible="false" class="auto-style11">

            <fieldset>
                <legend>
                    <br />
                    Show Logo/Image<br />
                </legend>
                <div id="div3" runat="server">
                    <br />
                    <asp:Image ID="Image1" runat="server" Height="200" Width="200" ImageUrl="~/Image.gif" />
                </div>
                <br />
            </fieldset>
            <br />

            <br />

            <br />
        </div>

        <br />
        <br />

        <%-- <a id="btnHelp" class="auto-style5" href="Help.aspx" style="padding: inherit; font-size: large; color: #FFFFFF; text-align: center; font-weight: normal; font-family: Arial; top: auto;">HELP</a><br />
    <br />
    <br />
        <p class="auto-style10">
                         <a id="btnBack" href="quantity.aspx" class="textbox" style="font-size: large; color: #FFFFFF; font-weight: normal;">BACK</a>
                         </p>
    <p class="auto-style9" style="text-align: center">
                         <a id="btnNext" href="ProductReview.aspx" class="auto-style3" style="font-size: large; color: #FFFFFF; font-weight: normal;">NEXT</a>
                         </p>--%>


        <a href="ProductReview.aspx"><span class="btnGeneral">NEXT</span></a>
        <a id="btnBack" href="quantity.aspx" class="btnGeneral">BACK</a>
        <a id="btnHelp" href="Help.aspx" class="btnGeneral">HELP</a><br />

    </form>


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
