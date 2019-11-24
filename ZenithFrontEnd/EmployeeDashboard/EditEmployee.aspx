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
                       <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Name cannot be empty" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>   
                 
               </tr>    
               <tr>    
                   <td class="headingCol">Phone</td>    
                   <td class="valCol">    
                       <asp:TextBox ID="txtPhone" runat="server" style="width:100%" />   
                       <br />
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone cannot be empty" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                   <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPhone" ErrorMessage="Improper Phone number format" Font-Size="Smaller" ForeColor="Red" ValidationExpression="^[0-9]{1,10}$"></asp:RegularExpressionValidator>
                   </td>  
                   
               </tr>    
               <tr>    
                   <td class="headingCol">Email</td>    
                   <td class="valCol">    
                       <asp:TextBox ID="txtEmail" runat="server" style="width:100%" /> 
                       <br />
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email cannot be empty" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br /> 
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email format is not valid." Font-Size="Smaller" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        
                    </td>  
                  
               </tr>
               <tr>    
                   <td class="headingCol">Address</td>    
                   <td class="valCol">    
                       <asp:TextBox ID="txtAddress" runat="server" style="width:100%" /> 
                       <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address cannot be empty" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                   </td> 
                  
               </tr>
               <tr>    
                   <td class="headingCol">Postal Code</td>    
                   <td class="valCol">    
                       <asp:TextBox ID="txtPostal" runat="server" style="width:100%" />    
                       <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPostal" ErrorMessage="Postal code cannot be empty" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                   <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorPostalCode" runat="server" ControlToValidate="txtPostal" ErrorMessage="That postal code is not a valid US or Canadian postal code." Font-Size="Smaller" ForeColor="Red" ValidationExpression="(^\d{5}(-\d{4})?$)|(^[ABCEGHJKLMNPRSTVXYabceghjklmnprstvxy]{1}\d{1}[ABCEGHJKLMNPRSTVWXYZabceghjklmnprstv‌​xy]{1} *\d{1}[ABCEGHJKLMNPRSTVWXYZabceghjklmnprstvxy]{1}\d{1}$)"></asp:RegularExpressionValidator>
                   </td>   
                  
               </tr>
               <tr>    
                   <td class="headingCol">Role</td>    
                   <td class="valCol">    
                       <asp:TextBox ID="txtRole" runat="server" style="width:100%"/>   
                       <br />
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtRole" ErrorMessage="Role cannot be empty" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>   
                   
               </tr>
               <tr>    
                   <td class="headingCol">Password</td>    
                   <td class="valCol">    
                       <asp:TextBox ID="txtPass" runat="server" style="width:100%"/>  
                       <br />
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPass" ErrorMessage="Password cannot be empty" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>    
                   
               </tr>
               <tr>    
                   <td class="center">    
                        <asp:Button class="btnInsert" ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />    
                   </td>    
                   <td class="center">    
                       <asp:Button class="btnInsert" ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />    
                   </td>    
                   
               </tr>    
           </table> 
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
