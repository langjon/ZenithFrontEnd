<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Quantity.aspx.cs" Inherits="ZenithFrontEnd.Quantity" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>C&B Packaging - Login</title>

    <link rel="stylesheet" href="css/main.css" />
    <style type="text/css">
        .auto-style9 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            border-radius: 5px;
            height: 30px;
            width: 71px;
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
            width: 73px;
            background-color: steelblue;
            color: white;
            outline: none;
            user-select: none;
            float: right;
            margin-left: 55px;
            margin-right: 94px;
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

        .auto-style11 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            border-radius: 5px;
            height: 30px;
            width: 81px;
            background-color: steelblue;
            color: white;
            outline: none;
            user-select: none;
            float: left;
            margin-left: 57px;
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
    <div id="errorMessages" runat="server">
    </div>
    <div style="height: 700px">
        <form id="form1" runat="server">
            <div class="pageTitle">
                <p>BUILD YOUR BOX</p>
            </div>
            <div id="buildDiv">
                <asp:ImageButton ID="selectedBox" class="auto-style1" runat="server" Height="134px" Width="160px" />

                <div>
                    <div style="font-size: large; font-weight: bold">
                        <p>
                            Quantity<asp:RadioButtonList Width="30%" ID="quantityRadioBtn" runat="server" OnSelectedIndexChanged="quantityRadioBtn_SelectedIndexChanged" AutoPostBack="true" RepeatDirection="Horizontal" RepeatColumns="3" CellPadding="3" CellSpacing="2" CssClass="auto-style14" Font-Names="Arial" Font-Size="Medium">
                                <asp:ListItem>  1       </asp:ListItem>
                                <asp:ListItem>  50      </asp:ListItem>
                                <asp:ListItem>  1000    </asp:ListItem>
                                <asp:ListItem>  10      </asp:ListItem>
                                <asp:ListItem>  100     </asp:ListItem>
                                <asp:ListItem>  2000    </asp:ListItem>
                                <asp:ListItem>  25      </asp:ListItem>
                                <asp:ListItem>  500     </asp:ListItem>
                                <asp:ListItem>  5000    </asp:ListItem>
                            </asp:RadioButtonList>

                        </p>
                        <div class="auto-style12">
                            &nbsp;&nbsp;&nbsp;
                     <p class="auto-style6">
                         <label for="customQuantity">
                             Custom Quantity:</label>
                     </p>
                            <p class="auto-style4">
                                <br />
                                <asp:TextBox CssClass="auto-style3" ID="txtCustom" runat="server" Width="34px"></asp:TextBox>&nbsp; pcs.
                            </p>
                            <p class="auto-style8">
                                <asp:Button ID="BtnSelectQty" class="auto-style11" runat="server" Text="Select Custom Quantity" Width="291px" OnClick="BtnSelectQty_Click" />
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                            </p>
                            <a class="btnGeneral" href="ProductReview.aspx">NEXT</a>
                            <a class="btnGeneral" href="Product.aspx">BACK</a>
                            <a class="btnGeneral" href="Help.aspx">HELP</a>
                        </div>
                    </div>
                </div>
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

