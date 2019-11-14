<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Size.aspx.cs" Inherits="ZenithFrontEnd.Size" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>C&B Packaging - Size</title>

    <link rel="stylesheet" href="css/main.css" />
    <style type="text/css">
        .auto-style1 {
            margin-left: 90px;
        }

        .auto-style2 {
            width: 24%;
        }

        .auto-style4 {
            width: 734px;
        }

        .auto-style6 {
            width: 129px;
        }

        .auto-style7 {
            width: 24px;
            height: 31px;
        }

        .auto-style8 {
            width: 23%;
        }

        .auto-style14 {
            width: 26px;
            height: 24px;
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
    <div id="mainBodyDiv">

        <div class="pageTitle">
            <p>BUILD YOUR BOX</p>
        </div>


        <div id="bodyDiv">
            <form id="form2" runat="server" style="font-family: Arial; font-size: medium; font-style: normal; font-weight: bold;">
                <div id="panelDiv" class="panelDiv">
                    Your Order Progress:<br />
                    <br />
                    <div>
                        <asp:ImageButton ID="selectedBox" runat="server" Height="203px" Width="222px" />
                    </div>
                    <img alt="" class="auto-style14" src="images/blue%20circle.png" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SIZE<br />
                    <img alt="" class="auto-style7" src="images/circle.png" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PRINTING<br />
                    <img alt="" class="auto-style7" src="images/circle.png" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MATERIAL<br />
                    <img alt="" class="auto-style7" src="images/circle.png" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FINISH<br />
                    <img alt="" class="auto-style7" src="images/circle.png" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; WALL TYPE<br />
                    <img alt="" class="auto-style7" src="images/circle.png" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; QUANTITY<br />
                    <img alt="" class="auto-style7" src="images/circle.png" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; IMAGE UPLOAD
                </div>

                <br />
                <div class="customizeDiv">
                    <h2>Size</h2>
                    <div class="auto-style2" style="font-family: Arial; font-size: medium; font-weight: normal;">
                        <asp:RadioButtonList Width="600px" ID="sizeRadioBtn" runat="server" OnSelectedIndexChanged="sizeRadioBtn_SelectedIndexChanged" AutoPostBack="true" RepeatDirection="Horizontal" RepeatColumns="3" CellPadding="3" CellSpacing="2" CssClass="auto-style14" Font-Names="Arial" Font-Size="Medium">
                            <asp:ListItem>   6 x 6 x 6 in       </asp:ListItem>
                            <asp:ListItem>   8 x 8 x 8 in       </asp:ListItem>
                            <asp:ListItem>   10 x 10 x 10 in    </asp:ListItem>
                            <asp:ListItem>   12 x 12 x 8 in     </asp:ListItem>
                            <asp:ListItem>   12 x 12 x 12 in    </asp:ListItem>
                            <asp:ListItem>   12 x 12 x 4 in     </asp:ListItem>
                            <asp:ListItem>   12 x 12 x 6 in     </asp:ListItem>
                            <asp:ListItem>   14 x 14 x 14 in    </asp:ListItem>
                            <asp:ListItem>   16 x 16 x 12 in    </asp:ListItem>
                            <asp:ListItem>   16 x 16 x 16 in    </asp:ListItem>
                            <asp:ListItem>   24 x 12 x 12 in    </asp:ListItem>
                            <asp:ListItem>   24 x 16 x 16 in    </asp:ListItem>
                        </asp:RadioButtonList>

                    </div>

                    <div id="sizeDiv">
                        <div style="font-size: large; font-weight: bold">
                            <div class="auto-style12">
                                &nbsp;&nbsp;&nbsp;
                      
                     <p class="auto-style6" style="font-family: Arial; font-size: medium; font-weight: normal; font-style: normal;">

                         <label for="customSize" style="font-family: Arial; font-size: medium; font-style: normal;">
                             Custom Size:</label>
                     </p>
                                <p class="auto-style4" style="font-family: Arial; font-size: small">
                                    <br />
                                    <label for="txtLength" style="font-family: Arial; font-size: small">
                                        Length
                         <asp:TextBox CssClass="sizeField" ID="txtLength" runat="server" Width="50px" MaxLength="5"></asp:TextBox>&nbsp;x&nbsp;
                                    </label>
                                    <label for="txtWidth">
                                        Width
                         <asp:TextBox CssClass="sizeField" ID="txtWidth" runat="server" Width="50px" MaxLength="5"></asp:TextBox>&nbsp;x&nbsp;
                                    </label>
                                    <label for="txtDepth" style="font-family: Arial; font-size: small">
                                        Depth
                         <asp:TextBox CssClass="sizeField" ID="txtDepth" runat="server" Width="50px" MaxLength="5"></asp:TextBox>&nbsp;in
                                    </label>
                                </p>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtLength" ErrorMessage="Length should be a positive number " Font-Size="Smaller" ForeColor="Red" ValidationExpression="^[0-9]+(\.[0-9][0-9]?)?$"></asp:RegularExpressionValidator>&nbsp;
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtWidth" ErrorMessage="Width should be a positive number" Font-Size="Smaller" ForeColor="Red" ValidationExpression="^[0-9]+(\.[0-9][0-9]?)?$"></asp:RegularExpressionValidator>&nbsp;
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtDepth" ErrorMessage="Depth should be a positive number" Font-Size="Smaller" ForeColor="Red" ValidationExpression="^[0-9]+(\.[0-9][0-9]?)?$"></asp:RegularExpressionValidator>&nbsp;
                    <br />
                                <asp:Button ID="btSize" runat="server" Text="Select Custom Size" OnClick="btnSelectSize_Click" />

                                &nbsp;&nbsp;&nbsp;&nbsp;

                            <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="Medium"></asp:Label>
                                <br />
                                <br />

                                <a class="btnGeneral" href="options.aspx">NEXT</a>
                                <a class="btnGeneral" href="Product.aspx">BACK</a>
                                <a class="btnGeneral" href="Help.aspx">HELP</a>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
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

