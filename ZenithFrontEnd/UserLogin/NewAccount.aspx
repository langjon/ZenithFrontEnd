<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewAccount.aspx.cs" Inherits="ZenithFrontEnd.UserLogin.NewAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     
         <div id="errorMessages" runat="server">
         </div>
        <div class="pageTitle">
            <p>ACCOUNT CREATION</p>
        </div>
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
