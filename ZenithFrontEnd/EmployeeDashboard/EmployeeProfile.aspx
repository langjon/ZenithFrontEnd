<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeeProfile.aspx.cs" Inherits="ZenithFrontEnd.EmployeeDashboard.EmployeeProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pageTitle">
            <p>UPDATE EMPLOYEE PROFILE</p>
        </div>
    <div id="updateEmpDiv" style="float:none; margin-left: 25%;">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="EmpId" DataSourceID="SqlDataSource1" Height="79px" Width="807px">
        <Fields>
            <asp:BoundField DataField="EmpId" HeaderText="EmpId" ReadOnly="True" SortExpression="EmpId" />
            <asp:TemplateField HeaderText="Full Name" SortExpression="EmpName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("EmpName") %>'></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Name cannot be empty" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("EmpName") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("EmpName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Phone Number" SortExpression="EmpPhone">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("EmpPhone") %>'></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Phone number cannot be empty" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("EmpPhone") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("EmpPhone") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email Address" SortExpression="EmpEmail">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("EmpEmail") %>'></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Email address cannot be empty" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("EmpEmail") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("EmpEmail") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Home Address" SortExpression="EmpAddress">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("EmpAddress") %>'></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Home address cannot be empty" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("EmpAddress") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("EmpAddress") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Postal Code" SortExpression="EmpPostalCode">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("EmpPostalCode") %>'></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Postal Code cannot be empty" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("EmpPostalCode") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("EmpPostalCode") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" ButtonType="Button" EditText="EDIT PROFILE" />
        </Fields>
    </asp:DetailsView>
<br />
        <div style="margin-left: 25%;">
    <a class="auto-style5" href="EmpPassword.aspx">RESET PASSWORD</a><p class="auto-style3">
        </div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ZenithCapstoneDBConnectionString %>" DeleteCommand="DELETE FROM [Employee] WHERE [EmpId] = @EmpId" InsertCommand="INSERT INTO [Employee] ([EmpId], [EmpName], [EmpPhone], [EmpEmail], [EmpAddress], [EmpPostalCode]) VALUES (@EmpId, @EmpName, @EmpPhone, @EmpEmail, @EmpAddress, @EmpPostalCode)" SelectCommand="SELECT * FROM [Employee] WHERE ([EmpId] = @EmpId)" UpdateCommand="UPDATE [Employee] SET [EmpName] = @EmpName, [EmpPhone] = @EmpPhone, [EmpEmail] = @EmpEmail, [EmpAddress] = @EmpAddress, [EmpPostalCode] = @EmpPostalCode WHERE [EmpId] = @EmpId">
    <DeleteParameters>
        <asp:Parameter Name="EmpId" Type="Decimal" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="EmpId" Type="Decimal" />
        <asp:Parameter Name="EmpName" Type="String" />
        <asp:Parameter Name="EmpPhone" Type="String" />
        <asp:Parameter Name="EmpEmail" Type="String" />
        <asp:Parameter Name="EmpAddress" Type="String" />
        <asp:Parameter Name="EmpPostalCode" Type="String" />
    </InsertParameters>
    <SelectParameters>
        <asp:SessionParameter Name="EmpId" SessionField="EmpID" Type="Decimal" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="EmpName" Type="String" />
        <asp:Parameter Name="EmpPhone" Type="String" />
        <asp:Parameter Name="EmpEmail" Type="String" />
        <asp:Parameter Name="EmpAddress" Type="String" />
        <asp:Parameter Name="EmpPostalCode" Type="String" />
        <asp:Parameter Name="EmpId" Type="Decimal" />
    </UpdateParameters>
</asp:SqlDataSource>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
