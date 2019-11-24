<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditEmployee.aspx.cs" Inherits="ZenithFrontEnd.EmployeeDashboard.EditEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>C&B Packaging - Dashboard</title>
      <link rel="stylesheet" href="css/main.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pageTitle">
      <h1 >EDIT EMPLOYEE</h1>
    </div>
        
    <div id="bodyDiv">
               
           <table class="orderTable">    
               <tr>    
                   <td class="headingCol">Employee ID</td>    
                   <td class="valCol">    
                       <asp:Label ID="lblEmpId" runat="server" ReadOnly="true" />    
                   </td>    
               </tr>    
               <tr>    
                   <td class="headingCol">Employee Login Name</td>    
                   <td class="valCol">    
                       <asp:Label ID="lblLoginNameId" runat="server" />    
                   </td>    
               </tr>    
               <tr>    
                   <td class="headingCol">Name</td>    
                   <td class="valCol">    
                       <asp:TextBox ID="txtName" runat="server" style="width:100%" />    
                   </td>    
               </tr>    
               <tr>    
                   <td class="headingCol">Phone</td>    
                   <td class="valCol">    
                       <asp:TextBox ID="txtPhone" runat="server" style="width:100%" />    
                   </td>    
               </tr>    
               <tr>    
                   <td class="headingCol">Email</td>    
                   <td class="valCol">    
                       <asp:TextBox ID="txtEmail" runat="server" style="width:100%" />    
                   </td>    
               </tr>
               <tr>    
                   <td class="headingCol">Address</td>    
                   <td class="valCol">    
                       <asp:TextBox ID="txtAddress" runat="server" style="width:100%" />    
                   </td>    
               </tr>
               <tr>    
                   <td class="headingCol">Postal Code</td>    
                   <td class="valCol">    
                       <asp:TextBox ID="txtPostal" runat="server" style="width:100%" />    
                   </td>    
               </tr>
               <tr>    
                   <td class="headingCol">Role</td>    
                   <td class="valCol">    
                       <asp:TextBox ID="txtRole" runat="server" style="width:100%"/>    
                   </td>    
               </tr>
               <tr>    
                   <td class="headingCol">Password</td>    
                   <td class="valCol">    
                       <asp:TextBox ID="txtPass" runat="server" style="width:100%"/>    
                   </td>    
               </tr>
               <tr>    
                   <td class="center">    
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />    
                   </td>    
                   <td class="center">    
                       <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />    
                   </td>    
               </tr>    
           </table> 
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
