<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ZenithFrontEnd.Product" %>

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
    </div>  
    </form>

    <p>Welcome</p>
    <div>
        <a href="/Login.aspx">Login</a>
    </div>
        <div id="output" runat="server">

        </div>
    
</body>
</html>
