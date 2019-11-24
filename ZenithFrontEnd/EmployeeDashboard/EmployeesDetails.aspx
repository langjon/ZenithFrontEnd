<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeesDetails.aspx.cs" Inherits="ZenithFrontEnd.EmployeeDashboard.EmployeesDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>C&B Packaging - Dashboard</title>
    <link rel="stylesheet" href="css/main.css" />
    
    
    <style type="text/css">
        .auto-style2 {
            width: 10%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div class="pageTitle">
      <p >Employees Details</p>
    </div>
    <div id="bodyDiv">
        
      <asp:GridView ID="EmpGridView" class="orderGrid" runat="server" AutoGenerateColumns="False" DataKeyNames="EmpId,EmployeeLoginId" DataSourceID="SqlDataSource2" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" OnRowCommand="EmpGridView_RowCommand">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="EmpId" HeaderText="Employee ID" ReadOnly="True" SortExpression="EmpId" />
                <asp:BoundField DataField="EmpName" HeaderText="Name" SortExpression="EmpName" />
                <asp:BoundField DataField="EmpPhone" HeaderText="Phone" SortExpression="EmpPhone" />
                <asp:BoundField DataField="EmpEmail" HeaderText="Email" SortExpression="EmpEmail" />
                <asp:BoundField DataField="EmpAddress" HeaderText="Address" SortExpression="EmpAddress" />
                <asp:BoundField DataField="EmpPostalCode" HeaderText="Postal Code" SortExpression="EmpPostalCode" />
                <asp:BoundField DataField="EmployeeLoginId" HeaderText="Login Username" ReadOnly="True" SortExpression="EmployeeLoginId" />
                <asp:BoundField DataField="Pass" HeaderText="Password" SortExpression="Pass" />
                <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
                <asp:ButtonField CommandName="Delete Row" Text="Delete" />
                <asp:HyperLinkField Text="Edit" DataNavigateUrlFields="EmpId"
                          DataNavigateUrlFormatString="EditEmployee.aspx?EmpId={0}" />          
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ZenithCapstoneDBConnectionString %>" 
            SelectCommand="SELECT Employee.EmpId, Employee.EmpName, Employee.EmpPhone, Employee.EmpEmail, Employee.EmpAddress, Employee.EmpPostalCode, EmployeeLogin.EmployeeLoginId, EmployeeLogin.Pass, EmployeeLogin.Role FROM Employee INNER JOIN EmployeeLogin ON Employee.EmpId = EmployeeLogin.EmpId">

        </asp:SqlDataSource>
       <div class="pageTitle">
            <p >New Employee</p>
         </div>
        <table  class="orderTable">
            <tr>
                <td class="headingCol2">ID</td>
                <td class="headingCol">Name</td>
                <td class="headingCol">Phone</td>
                <td class="headingCol">Email</td>
                <td class="headingCol">Address</td>
                <td class="headingCol">Postal Code</td>
                <td class="headingCol">Login Username</td>
                <td class="headingCol">Password</td>
                <td class="headingCol">Role</td>
            </tr>
            
            <tr>
                 <td>
                    <asp:TextBox TextMode="Number" ID="tbId" runat="server" class="wideTextBox"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="tbName" runat="server" class="wideTextBox"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="tbPhone" runat="server" class="wideTextBox"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox TextMode="Email" ID="tbEmail" runat="server" class="wideTextBox"></asp:TextBox>
                </td>
                <td >
                    <asp:TextBox ID="tbAddress" runat="server" class="wideTextBox"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="tbPostalCode" runat="server" class="wideTextBox"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="tbEmpLogin" runat="server" class="wideTextBox"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox TextMode="Password" ID="tbPass" runat="server" class="wideTextBox"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="tbRole" runat="server" class="wideTextBox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="validation">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="tbId" ErrorMessage="Employee ID cannot be empty" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="validation">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbName" ErrorMessage="Name cannot be empty" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="validation">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbPhone" ErrorMessage="Phone cannot be empty" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tbPhone" ErrorMessage="Improper Phone number format" Font-Size="Smaller" ForeColor="Red" ValidationExpression="^[0-9]{1,10}$"></asp:RegularExpressionValidator>
                </td>
                <td class="validation">
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbEmail" ErrorMessage="Email cannot be empty" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br /> 
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbEmail" ErrorMessage="Email format is not valid." Font-Size="Smaller" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td class="validation" >
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbAddress" ErrorMessage="Address cannot be empty" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="validation">
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tbPostalCode" ErrorMessage="Postal Code cannot be empty" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorPostalCode" runat="server" ControlToValidate="tbPostalCode" ErrorMessage="That postal code is not a valid US or Canadian postal code." Font-Size="Smaller" ForeColor="Red" ValidationExpression="(^\d{5}(-\d{4})?$)|(^[ABCEGHJKLMNPRSTVXYabceghjklmnprstvxy]{1}\d{1}[ABCEGHJKLMNPRSTVWXYZabceghjklmnprstv‌​xy]{1} *\d{1}[ABCEGHJKLMNPRSTVWXYZabceghjklmnprstvxy]{1}\d{1}$)"></asp:RegularExpressionValidator>
                </td>
                <td class="validation">
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tbEmpLogin" ErrorMessage="Login username cannot be empty" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="validation">
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tbPass" ErrorMessage="Password cannot be empty" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="validation">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="tbRole" ErrorMessage="Role cannot be empty" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="9" class="center">
                    <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" />
                </td>
            </tr>
        </table>
        
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
