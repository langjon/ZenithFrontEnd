﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="ZenithFrontEnd.CreateAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>C&B Packaging - Create Account</title>
    <link rel="stylesheet" href="css/main.css" />
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

    <div style="height:700px">
        <div class="pageTitle">
            <p>ACCOUNT CREATION</p>
        </div>

        <form id="createAccountForm" runat="server">
            <div id="addressDiv">
                <label for="txtpwd">COMPANY NAME</label>
                <br />
                <asp:TextBox CssClass="textbox" ID="txtCompany" runat="server" ></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtCompany" ErrorMessage="Company name cannot be empty" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <label for="txtpwd">STREET ADDRESS</label>
                <br />
                <asp:TextBox CssClass="textbox" ID="txtStAddress" runat="server" ></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtStAddress" ErrorMessage="Street Address cannot be empty" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <label for="txtpwd">PROVINCE/STATE</label>
                <asp:DropDownList ID="dropProvince" runat="server" required="required" DataSourceID="ZenithProvSqlDataSource" DataTextField="StateProvCode" DataValueField="StateProvCode"></asp:DropDownList>
                <asp:SqlDataSource ID="ZenithProvSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ZenithCapstoneDBConnectionString %>" SelectCommand="SELECT DISTINCT [StateProvCode] FROM [StateProv] ORDER BY [StateProvCode]"></asp:SqlDataSource>
                <label for="txtpwd">COUNTRY</label>
                <asp:DropDownList ID="dropCountry" runat="server" required="required" DataSourceID="ZenithCountrySqlDataSource" DataTextField="CountryShortName" DataValueField="CountryShortName"></asp:DropDownList>
                <asp:SqlDataSource ID="ZenithCountrySqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ZenithCapstoneDBConnectionString %>" SelectCommand="SELECT [CountryShortName] FROM [Countries]"></asp:SqlDataSource>
                <br />
                <br />
                <label for="txtpwd">POSTAL/ZIP</label>
                <br />
                <asp:TextBox CssClass="textbox" ID="txtPostal" runat="server" ></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtPostal" ErrorMessage="Postal code cannot be empty" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorPostalCode" runat="server" ControlToValidate="txtPostal" ErrorMessage="That postal code is not a valid US or Canadian postal code." Font-Size="Smaller" ForeColor="Red" ValidationExpression="(^\d{5}(-\d{4})?$)|(^[ABCEGHJKLMNPRSTVXYabceghjklmnprstvxy]{1}\d{1}[ABCEGHJKLMNPRSTVWXYZabceghjklmnprstv‌​xy]{1} *\d{1}[ABCEGHJKLMNPRSTVWXYZabceghjklmnprstvxy]{1}\d{1}$)"></asp:RegularExpressionValidator>
                <br />
                <asp:Button CssClass="btnLogin" ID="Button1" runat="server" OnClick="Create_Click" Text="CREATE" />
            </div>
            <div id="loginDiv">
                <label for="txtUsername">USERNAME</label> 
                <br />
                <asp:TextBox CssClass="textbox" ID="txtUsername" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="User name cannot be empty" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <label for="txtpwd">PASSWORD</label>
                <br />
                <asp:TextBox TextMode="Password" CssClass="textbox" ID="txtpwd" runat="server" ></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd" ErrorMessage="Password cannot be empty" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="textConfirmpwd" ControlToValidate="txtPwd" ErrorMessage="Password doesn't match" Font-Size="Smaller" ForeColor="Red"></asp:CompareValidator>
                <br />
                <label for="txtpwd">CONFIRM PASSWORD</label>
                <br />
                <asp:TextBox TextMode="Password" CssClass="textbox" ID="textConfirmpwd" runat="server" ></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="textConfirmpwd" ErrorMessage="Password cannot be empty" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <label for="txtpwd">FIRST NAME</label>
                <br />
                <asp:TextBox CssClass="textbox" ID="txtFirstName" runat="server" ></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First name cannot be empty" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <label for="txtpwd">LAST NAME</label>
                <br />
                <asp:TextBox CssClass="textbox" ID="txtLastName" runat="server" ></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last name cannot be empty" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <label for="txtpwd">PHONE NUMBER</label>
                <br />
                <asp:TextBox CssClass="textbox" ID="txtPhone" runat="server" ></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone number cannot be empty" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPhone" ErrorMessage="Improper Phone number format" Font-Size="Smaller" ForeColor="Red" ValidationExpression="^[0-9]{1,10}$"></asp:RegularExpressionValidator>
                <br />
                <label for="txtpwd">EMAIL</label>
                <br />
                <asp:TextBox CssClass="textbox" ID="txtEmail" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email cannot be empty" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email format is not valid." Font-Size="Smaller" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>
            
        </form>
    </div>
    <div>
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
    </div>
</body>
</html>
