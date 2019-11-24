<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update_Profile.aspx.cs" Inherits="ZenithFrontEnd.UserLogin.Update_Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 80px;
        }
        .auto-style3 {
            margin-left: 22px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="auto-style1">
        &nbsp;</p>
    <p class="orderGrid" style="font-family: Arial; font-size: large; font-weight: bold; text-align: center;">
        UPDATE PROFILE</p>
        <asp:DetailsView class="orderGrid" ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="CusID" DataSourceID="SqlDataSource1" Height="50px" Width="911px" Font-Bold="True" Font-Size="Medium" CssClass="auto-style4">
            <Fields>
                <asp:BoundField DataField="CusID" HeaderText="Customer ID" InsertVisible="False" ReadOnly="True" SortExpression="CusID" />
                <asp:TemplateField HeaderText="First Name" SortExpression="CusFirstName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CusFirstName") %>'></asp:TextBox>
                        &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="First name cannot be empty" Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CusFirstName") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("CusFirstName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Last Name" SortExpression="CusLastName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CusLastName") %>'></asp:TextBox>
                        &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Last name cannot be empty" Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CusLastName") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("CusLastName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Phone Number" SortExpression="CusPhone">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("CusPhone") %>'></asp:TextBox>
                        &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Phone number cannot be empty" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("CusPhone") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("CusPhone") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email Address" SortExpression="CusEmail">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("CusEmail") %>'></asp:TextBox>
                        &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Email address cannot be emptty" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("CusEmail") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("CusEmail") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Company" SortExpression="CusCompany">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("CusCompany") %>'></asp:TextBox>
                        &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Company cannot be empty" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("CusCompany") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("CusCompany") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Street Address" SortExpression="CusStreetAddress">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("CusStreetAddress") %>'></asp:TextBox>
                        &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Address cannot be empty" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("CusStreetAddress") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("CusStreetAddress") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Province" SortExpression="CusProvince">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("CusProvince") %>'></asp:TextBox>
                        &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="Province cannot be empty" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("CusProvince") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("CusProvince") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Country" SortExpression="CusCountry">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("CusCountry") %>'></asp:TextBox>
                        &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="Country cannot be empty" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("CusCountry") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("CusCountry") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Postal Code" SortExpression="CusPostalCode">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("CusPostalCode") %>'></asp:TextBox>
                        &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox9" ErrorMessage="Postal code cannot be empty" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("CusPostalCode") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("CusPostalCode") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="True" ButtonType="Button" />
            </Fields>
        </asp:DetailsView>
    <p class="auto-style3">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ZenithCapstoneDBConnectionString %>" DeleteCommand="DELETE FROM [Customer] WHERE [CusID] = @CusID" InsertCommand="INSERT INTO [Customer] ([CusFirstName], [CusLastName], [CusPhone], [CusEmail], [CusCompany], [CusStreetAddress], [CusProvince], [CusCountry], [CusPostalCode]) VALUES (@CusFirstName, @CusLastName, @CusPhone, @CusEmail, @CusCompany, @CusStreetAddress, @CusProvince, @CusCountry, @CusPostalCode)" SelectCommand="SELECT * FROM [Customer] WHERE ([CusID] = @CusID)" UpdateCommand="UPDATE [Customer] SET [CusFirstName] = @CusFirstName, [CusLastName] = @CusLastName, [CusPhone] = @CusPhone, [CusEmail] = @CusEmail, [CusCompany] = @CusCompany, [CusStreetAddress] = @CusStreetAddress, [CusProvince] = @CusProvince, [CusCountry] = @CusCountry, [CusPostalCode] = @CusPostalCode WHERE [CusID] = @CusID">
            <DeleteParameters>
                <asp:Parameter Name="CusID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CusFirstName" Type="String" />
                <asp:Parameter Name="CusLastName" Type="String" />
                <asp:Parameter Name="CusPhone" Type="String" />
                <asp:Parameter Name="CusEmail" Type="String" />
                <asp:Parameter Name="CusCompany" Type="String" />
                <asp:Parameter Name="CusStreetAddress" Type="String" />
                <asp:Parameter Name="CusProvince" Type="String" />
                <asp:Parameter Name="CusCountry" Type="String" />
                <asp:Parameter Name="CusPostalCode" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="CusID" SessionField="UserId" Type="Decimal" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="CusFirstName" Type="String" />
                <asp:Parameter Name="CusLastName" Type="String" />
                <asp:Parameter Name="CusPhone" Type="String" />
                <asp:Parameter Name="CusEmail" Type="String" />
                <asp:Parameter Name="CusCompany" Type="String" />
                <asp:Parameter Name="CusStreetAddress" Type="String" />
                <asp:Parameter Name="CusProvince" Type="String" />
                <asp:Parameter Name="CusCountry" Type="String" />
                <asp:Parameter Name="CusPostalCode" Type="String" />
                <asp:Parameter Name="CusID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <a class="btnGeneral" href="password.aspx">RESET PASSWORD</a></p>
    <p>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
