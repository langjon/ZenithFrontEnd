<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Options.aspx.cs" Inherits="ZenithFrontEnd.Options" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>C&B Packaging - Options</title>

    <link rel="stylesheet" href="css/main.css" />
    <style type="text/css">
    
        .auto-style2 {
            width: 8%;
            height: 31px;
        }

        .auto-style7 {
            width: 24px;
            height: 31px;
        }

        .auto-style5 {
            width: 29px;
            height: 26px;
        }

        .auto-style8 {
            height: 536px;
        }

        .auto-style9 {
            width: 18%;
            height: 31px;
        }


        .auto-style11 {
            width: 20%;
            height: 31px;
        }

        .auto-style12 {
            width: 41%;
            height: 31px;
        }

        .auto-style13 {
            height: 563px;
        }

        .auto-style14 {
            width: 26px;
            height: 24px;
        }

        .auto-style15 {
            margin-left: 160px;
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
    <div id="mainBodyDiv" class="auto-style13">

        <div class="pageTitle">
            <p>BUILD YOUR BOX</p>
        </div>

        <
        <div id="bodyDiv" class="auto-style10">
            <form id="form1" runat="server">
                <div id="panelDiv" class="panelDiv">
                    Your Order Progress:<br />
                    <br />
                    <div>
                        <asp:ImageButton ID="selectedBox" runat="server" Height="203px" Width="222px" />
                    </div>
                    &nbsp;<img alt="" class="auto-style5" src="images/check.jpg" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SIZE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelSize" runat="server" Text="Label"></asp:Label>
                    <br />
                    <img alt="" class="auto-style14" src="images/blue%20circle.png" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PRINTING<br />
                    <img alt="" class="auto-style14" src="images/blue%20circle.png" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MATERIAL<br />
                    <img alt="" class="auto-style14" src="images/blue%20circle.png" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FINISH<br />
                    <img alt="" class="auto-style14" src="images/blue%20circle.png" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; WALL TYPE<br />
                    <img alt="" class="auto-style7" src="images/circle.png" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; QUANTITY<br />
                    <img alt="" class="auto-style7" src="images/circle.png" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; IMAGE UPLOAD
                </div>

                <div class="customizeDiv">
                    <div style="font-size: large; font-weight: bold">
                        <p class="auto-style9" style="font-family: Arial; font-size: medium">
                            Printing<asp:RadioButtonList ID="sideRadioBtn" runat="server" RepeatDirection="Horizontal" RepeatColumns="3" Font-Names="Arial" Font-Size="Small" OnSelectedIndexChanged="sideRadioBtn_SelectedIndexChanged" AutoPostBack="true" Height="33px" Width="423px">
                                <asp:ListItem Selected="True">Outside Only</asp:ListItem>
                                <asp:ListItem>Inside Only</asp:ListItem>
                                <asp:ListItem>Both Sides</asp:ListItem>
                            </asp:RadioButtonList>
                        </p>
                        <p class="auto-style2" style="font-family: Arial; font-size: medium">
                            Material<asp:RadioButtonList ID="materialRadioBtn" runat="server" RepeatDirection="Horizontal" RepeatColumns="3" Font-Names="Arial" Font-Size="Small" OnSelectedIndexChanged="materialRadioBtn_SelectedIndexChanged" AutoPostBack="true" Height="33px" Width="423px">
                                <asp:ListItem>Premium White</asp:ListItem>
                                <asp:ListItem>White</asp:ListItem>
                                <asp:ListItem Selected="True">Kraft</asp:ListItem>
                            </asp:RadioButtonList>
                        </p>
                        <p class="auto-style11" style="font-family: Arial; font-size: medium">
                            Finish<asp:RadioButtonList ID="finishRadioBtn" runat="server" RepeatDirection="Horizontal" RepeatColumns="2" Font-Names="Arial" Font-Size="Small" OnSelectedIndexChanged="finishRadioBtn_SelectedIndexChanged" AutoPostBack="true" Height="33px" Width="423px">
                                <asp:ListItem>Gloss</asp:ListItem>
                                <asp:ListItem>Matte</asp:ListItem>
                            </asp:RadioButtonList>
                        </p>
                        <p class="auto-style12" style="font-family: Arial; font-size: medium">
                            Wall Type<asp:RadioButtonList ID="wallRadioBtn" runat="server" RepeatDirection="Horizontal" RepeatColumns="3" Font-Names="Arial" Font-Size="Small" OnSelectedIndexChanged="wallRadioBtn_SelectedIndexChanged" AutoPostBack="true" Height="33px" Width="423px">
                                <asp:ListItem Selected="True">Single</asp:ListItem>
                                <asp:ListItem>Double</asp:ListItem>
                                <asp:ListItem>Triple</asp:ListItem>
                            </asp:RadioButtonList>
                        </p>
                        <%--<p class="auto-style12" style="font-family: Arial; font-size: medium">
                            &nbsp;</p>--%>

                        <a class="btnGeneral" href="Quantity.aspx">NEXT</a>
                        <a class="btnGeneral" href="Size.aspx">BACK</a>
                        <a class="btnGeneral" href="Help.aspx">HELP</a>

                    </div>
                </div>
            </form>
        </div>
    </div>
    <br />
    <br />
    <br />

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

