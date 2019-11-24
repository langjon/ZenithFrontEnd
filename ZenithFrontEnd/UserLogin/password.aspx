<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="password.aspx.cs" Inherits="ZenithFrontEnd.UserLogin.password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pageTitle">
            <p>RESET PASSWORD</p>
        </div>
    <div id="passwordDiv" style="float:none; margin-left: 35%;">

        <asp:Label ID="Label1" runat="server" Text="Current password" Width="180px"
            Font-Bold="True" ForeColor="#0033CC"></asp:Label>
        <asp:TextBox ID="txt_cpassword" runat="server" TextMode="Password"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
            ControlToValidate="txt_cpassword"
            ErrorMessage="Please enter Current password" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
         <br />
         <br />
        <br />
         <asp:Label ID="Label2" runat="server" Text="New password" Width="120px"
            Font-Bold="True" ForeColor="#0033CC"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt_npassword" runat="server" TextMode="Password"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
            ControlToValidate="txt_npassword" ErrorMessage="Please enter New password" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
         <br />
         <br />
        <br />
       
         <asp:Label ID="Label3" runat="server" Text="Confirm password" Width="185px"
            Font-Bold="True" ForeColor="#0033D8"></asp:Label>

        <asp:TextBox ID="txt_ccpassword" runat="server" TextMode="Password"></asp:TextBox>   

        &nbsp;&nbsp;&nbsp;   

        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
            ControlToValidate="txt_ccpassword"
            ErrorMessage="Please enter Confirm  password" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>

        &nbsp;&nbsp;&nbsp;
         <br />

        <asp:CompareValidator ID="CompareValidator1" runat="server"
            ControlToCompare="txt_npassword" ControlToValidate="txt_ccpassword"
            ErrorMessage="Password Mismatch" Font-Size="Small" ForeColor="Red"></asp:CompareValidator>   
        <br />
        <br />
    <asp:Button ID="btn_update" runat="server" Font-Bold="True" BackColor="#CCFF99" onclick="btn_update_Click" Text="Update" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lbl_msg" Font-Bold="True" BackColor="White" ForeColor="Black" runat="server"></asp:Label>
        <br />
    </div>
     <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
     <br />
     <br />
     <br />
     <br />
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
