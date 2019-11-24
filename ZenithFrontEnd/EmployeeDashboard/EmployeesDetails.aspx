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

        </asp:SqlDataSource>  <div class="pageTitle">
            <p >New Employee</p>
         </div>
        <table  class="orderGrid">
            <tr>
                <td class="headingCol2" style="width: 10%" >ID</td>
                <td class="headingCol">Name</td>
                <td class="headingCol">Phone</td>
                <td class="headingCol">Email</td>
                <td class="headingCol" >Address</td>
                <td class="headingCol">Postal Code</td>
                <td class="headingCol">Login Username</td>
                <td class="headingCol">Password</td>
                <td class="headingCol">Role</td>
            </tr>
            
            <tr>
                 <td class="auto-style2"  >
                    <asp:TextBox ID="tbId" runat="server" class="wideTextBox"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="tbName" runat="server" class="wideTextBox"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="tbPhone" runat="server" class="wideTextBox"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="tbEmail" runat="server" class="wideTextBox"></asp:TextBox>
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
                    <asp:TextBox ID="tbPass" runat="server" class="wideTextBox"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="tbRole" runat="server" class="wideTextBox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="validation" style="width: 10%" ></td>
                <td class="validation"></td>
                <td class="validation"></td>
                <td class="validation"></td>
                <td class="validation" ></td>
                <td class="validation"></td>
                <td class="validation"></td>
                <td class="validation"></td>
                <td class="validation"></td>
            </tr>
            <tr>
                <td colspan="9" class="center">
                    <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" />
                </td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:ZenithCapstoneDBConnectionString %>" 
            DeleteCommand="DELETE FROM [Employee] WHERE [EmpId] = @original_EmpId AND (([EmpName] = @original_EmpName) OR ([EmpName] IS NULL AND @original_EmpName IS NULL)) AND (([EmpPhone] = @original_EmpPhone) OR ([EmpPhone] IS NULL AND @original_EmpPhone IS NULL)) AND (([EmpEmail] = @original_EmpEmail) OR ([EmpEmail] IS NULL AND @original_EmpEmail IS NULL)) AND (([EmpAddress] = @original_EmpAddress) OR ([EmpAddress] IS NULL AND @original_EmpAddress IS NULL)) AND (([EmpPostalCode] = @original_EmpPostalCode) OR ([EmpPostalCode] IS NULL AND @original_EmpPostalCode IS NULL))" 
            InsertCommand="INSERT INTO [Employee] ([EmpId], [EmpName], [EmpPhone], [EmpEmail], [EmpAddress], [EmpPostalCode]) VALUES (@EmpId, @EmpName, @EmpPhone, @EmpEmail, @EmpAddress, @EmpPostalCode)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [Employee]" 
            UpdateCommand="UPDATE [Employee] SET [EmpName] = @EmpName, [EmpPhone] = @EmpPhone, [EmpEmail] = @EmpEmail, [EmpAddress] = @EmpAddress, [EmpPostalCode] = @EmpPostalCode WHERE [EmpId] = @original_EmpId AND (([EmpName] = @original_EmpName) OR ([EmpName] IS NULL AND @original_EmpName IS NULL)) AND (([EmpPhone] = @original_EmpPhone) OR ([EmpPhone] IS NULL AND @original_EmpPhone IS NULL)) AND (([EmpEmail] = @original_EmpEmail) OR ([EmpEmail] IS NULL AND @original_EmpEmail IS NULL)) AND (([EmpAddress] = @original_EmpAddress) OR ([EmpAddress] IS NULL AND @original_EmpAddress IS NULL)) AND (([EmpPostalCode] = @original_EmpPostalCode) OR ([EmpPostalCode] IS NULL AND @original_EmpPostalCode IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_EmpId" Type="Decimal" />
                <asp:Parameter Name="original_EmpName" Type="String" />
                <asp:Parameter Name="original_EmpPhone" Type="String" />
                <asp:Parameter Name="original_EmpEmail" Type="String" />
                <asp:Parameter Name="original_EmpAddress" Type="String" />
                <asp:Parameter Name="original_EmpPostalCode" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter Name="EmpId" Type="Decimal" ControlID="tbId"/>
                <asp:ControlParameter Name="EmpName" Type="String" ControlID="tbName"/>
                <asp:ControlParameter Name="EmpPhone" Type="String" ControlID="tbPhone"/>
                <asp:ControlParameter Name="EmpEmail" Type="String" ControlID="tbEmail"/>
                <asp:ControlParameter Name="EmpAddress" Type="String" ControlID="tbAddress"/>
                <asp:ControlParameter Name="EmpPostalCode" Type="String" ControlID="tbPostalCode"/>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="EmpName" Type="String" />
                <asp:Parameter Name="EmpPhone" Type="String" />
                <asp:Parameter Name="EmpEmail" Type="String" />
                <asp:Parameter Name="EmpAddress" Type="String" />
                <asp:Parameter Name="EmpPostalCode" Type="String" />
                <asp:Parameter Name="original_EmpId" Type="Decimal" />
                <asp:Parameter Name="original_EmpName" Type="String" />
                <asp:Parameter Name="original_EmpPhone" Type="String" />
                <asp:Parameter Name="original_EmpEmail" Type="String" />
                <asp:Parameter Name="original_EmpAddress" Type="String" />
                <asp:Parameter Name="original_EmpPostalCode" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
