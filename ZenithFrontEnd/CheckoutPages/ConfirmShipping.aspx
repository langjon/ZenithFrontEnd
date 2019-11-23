<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConfirmShipping.aspx.cs" Inherits="ZenithFrontEnd.CheckoutPages.ConfirmShipping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pageTitle">
            <p>CONFIRM SHIPPING INFO</p>
        </div>
    <div id="addressDiv" style="float:none; margin-left: 35%;">
        <label for="txtFirstName">FIRST NAME</label>
        <br />
        <asp:TextBox CssClass="textbox" ID="txtFirstName" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First name cannot be empty" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <label for="txtLastName">LAST NAME</label>
        <br />
        <asp:TextBox CssClass="textbox" ID="txtLastName" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last name cannot be empty" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <label for="txtPhone">PHONE NUMBER</label>
        <br />
        <asp:TextBox CssClass="textbox" ID="txtPhone" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone number cannot be empty" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPhone" ErrorMessage="Improper Phone number format" Font-Size="Smaller" ForeColor="Red" ValidationExpression="^[0-9]{1,10}$"></asp:RegularExpressionValidator>
        <br />
        <label for="txtEmail">EMAIL</label>
        <br />
        <asp:TextBox CssClass="textbox" ID="txtEmail" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email cannot be empty" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email format is not valid." Font-Size="Smaller" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <label for="txtCompany">COMPANY NAME</label>
        <br />
        <asp:TextBox CssClass="textbox" ID="txtCompany" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtCompany" ErrorMessage="Company name cannot be empty" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <label for="txtStAddress">STREET ADDRESS</label>
        <br />
        <asp:TextBox CssClass="textbox" ID="txtStAddress" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtStAddress" ErrorMessage="Street Address cannot be empty" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <label for="dropProvince">PROVINCE/STATE</label>
        <asp:DropDownList ID="dropProvince" runat="server" required="required" DataSourceID="ZenithProvSqlDataSource" DataTextField="StateProvCode" DataValueField="StateProvCode"></asp:DropDownList>
        <asp:SqlDataSource ID="ZenithProvSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ZenithCapstoneDBConnectionString %>" SelectCommand="SELECT DISTINCT [StateProvCode] FROM [StateProv] ORDER BY [StateProvCode]"></asp:SqlDataSource>
        <label for="dropCountry">COUNTRY</label>
        <asp:DropDownList ID="dropCountry" runat="server" required="required" DataSourceID="ZenithCountrySqlDataSource" DataTextField="CountryShortName" DataValueField="CountryShortName"></asp:DropDownList>
        <asp:SqlDataSource ID="ZenithCountrySqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ZenithCapstoneDBConnectionString %>" SelectCommand="SELECT [CountryShortName] FROM [Countries]"></asp:SqlDataSource>
        <br />
        <br />
        <label for="txtPostal">POSTAL/ZIP</label>
        <br />
        <asp:TextBox CssClass="textbox" ID="txtPostal" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtPostal" ErrorMessage="Postal code cannot be empty" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorPostalCode" runat="server" ControlToValidate="txtPostal" ErrorMessage="That postal code is not a valid US or Canadian postal code." Font-Size="Smaller" ForeColor="Red" ValidationExpression="(^\d{5}(-\d{4})?$)|(^[ABCEGHJKLMNPRSTVXYabceghjklmnprstvxy]{1}\d{1}[ABCEGHJKLMNPRSTVWXYZabceghjklmnprstv‌​xy]{1} *\d{1}[ABCEGHJKLMNPRSTVWXYZabceghjklmnprstvxy]{1}\d{1}$)"></asp:RegularExpressionValidator>
        <br />
        <asp:Button CssClass="btnGeneral" ID="Button2" runat="server" OnClick="Next_Click" Text="NEXT"/>
        <asp:Button CssClass="btnGeneral" ID="Button1" runat="server" OnClick="ShippingUpdate_Click" Text="UPDATE"/>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
