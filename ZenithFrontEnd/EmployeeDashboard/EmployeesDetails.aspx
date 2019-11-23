<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeesDetails.aspx.cs" Inherits="ZenithFrontEnd.EmployeeDashboard.EmployeesDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>C&B Packaging - Dashboard</title>
    <link rel="stylesheet" href="css/main.css" />
    
    </style>
    <style type="text/css">
        .auto-style1 {
            width: 16%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div class="pageTitle">
      <p >Employees Details</p>
    </div>
    <div id="bodyDiv">
        
        <asp:GridView class="orderGrid" ID="EmpGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="EmpId" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="EmpId" HeaderText="Id" ReadOnly="True" SortExpression="EmpId" />
                <asp:BoundField DataField="EmpName" HeaderText="Name" SortExpression="EmpName" />
                <asp:BoundField DataField="EmpPhone" HeaderText="Phone" SortExpression="EmpPhone" />
                <asp:BoundField DataField="EmpEmail" HeaderText="Email" SortExpression="EmpEmail" />
                <asp:BoundField DataField="EmpAddress" HeaderText="Address" SortExpression="EmpAddress" />
                <asp:BoundField DataField="EmpPostalCode" HeaderText="PostalCode" SortExpression="EmpPostalCode" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <div class="pageTitle">
            <p >New Employee</p>
         </div>
        <table  class="orderGrid">
            <tr>
                <td class="headingCol" >ID</td>
                <td class="headingCol">Name</td>
                <td class="headingCol">Phone</td>
                <td class="headingCol">Email</td>
                <td class="headingCol" >Address</td>
                <td class="headingCol">Postal Code</td>
            </tr>
            
            <tr>
                 <td  >
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
            </tr>
            <tr>
                <td colspan="6" class="center">
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
