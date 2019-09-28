<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ZenithFrontEnd.index" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>  
        Username:-<asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>  
        <br />  
        <br />  
        Password:-<asp:TextBox ID="txtpwd" runat="server"></asp:TextBox>  
        <br />  
        <asp:Button ID="btnSubmit" runat="server" OnClick="Button1_Click" Text="Submit" />  
    </div>  
    </form>
</body>
</html>
