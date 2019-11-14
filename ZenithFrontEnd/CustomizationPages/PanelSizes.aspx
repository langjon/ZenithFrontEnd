<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PanelSizes.aspx.cs" Inherits="ZenithFrontEnd.CustomizationPages.BoxSizes" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>C&B Packaging - size</title>

    <link rel="stylesheet" href="css/main.css" />
    <style type="text/css">
        .auto-style1 {
            margin-left: 90px;
        }

        .auto-style2 {
            width: 24%;
        }

        .auto-style4 {
            width: 734px;
        }

        .auto-style7 {
            width: 24px;
            height: 31px;
        }

        .auto-style8 {
            width: 23%;
        }

        .auto-style14 {
            width: 26px;
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="pageTitle">
        <p>BUILD YOUR BOX</p>
    </div>
    <div id="bodyDiv">
        <div id="panelDiv" class="panelDiv">
            Your Order Progress:<br />

            <asp:ImageButton ID="selectedBox" runat="server" Height="134px" Width="160px" />

            <table class="panelContents">
                <tr">
                    <td>
                        <img alt="" class="auto-style14" src="../images/blue%20circle.png" /></td>
                    <td>SIZE</td>
                </tr>
                <tr>
                    <td>
                        <img alt="" class="auto-style7" src="../images/circle.png" /></td>
                    <td>PRINTING</td>
                </tr>
                <tr>
                    <td>
                        <img alt="" class="auto-style7" src="../images/circle.png" /></td>
                    <td>MATERIAL</td>
                </tr>
                <tr>
                    <td>
                        <img alt="" class="auto-style7" src="../images/circle.png" /></td>
                    <td>FINISH</td>
                </tr>
                <tr>
                    <td>
                        <img alt="" class="auto-style7" src="../images/circle.png" /></td>
                    <td>WALL TYPE</td>
                </tr>
                <tr>
                    <td>
                        <img alt="" class="auto-style7" src="../images/circle.png" /></td>
                    <td>QUANTITY</td>
                </tr>
                <tr>
                    <td>
                        <img alt="" class="auto-style7" src="../images/circle.png" /></td>
                    <td>IMAGE UPLOAD</td>
                </tr>
            </table>

        </div>
        <br />
        <div class="customizeDiv">
            <h2>Size</h2>
            <div class="auto-style2" style="font-family: Arial; font-size: medium; font-weight: normal;">
                <asp:RadioButtonList Width="600px" ID="sizeRadioBtn" runat="server" OnSelectedIndexChanged="sizeRadioBtn_SelectedIndexChanged" AutoPostBack="true" RepeatDirection="Horizontal" RepeatColumns="3" CellPadding="3" CellSpacing="2" CssClass="auto-style14" Font-Names="Arial" Font-Size="Medium">
                    <asp:ListItem>   6 x 6 in    </asp:ListItem>
                    <asp:ListItem>   8 x 8 in    </asp:ListItem>
                    <asp:ListItem>   10 x 10 in  </asp:ListItem>
                    <asp:ListItem>   12 x 12 in  </asp:ListItem>
                    <asp:ListItem>   14 x 14 in  </asp:ListItem>
                    <asp:ListItem>   16 x 16 in  </asp:ListItem>
                    <asp:ListItem>   24 x 24 in  </asp:ListItem>
                    <asp:ListItem>   28 x 28 in  </asp:ListItem>
                    <asp:ListItem>   32 x 32 in  </asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <label for="customSize">
                Custom Size:</label>

            <p class="auto-style4">
                <br />
                <label for="txtCustom">
                    Length
                         <asp:TextBox CssClass="auto-style3" ID="txtCustom" runat="server" Width="50px" MaxLength="5"></asp:TextBox>
                    &nbsp;x&nbsp;
                </label>
                <label for="txtCusto0m">
                    Width
                         <asp:TextBox CssClass="auto-style3" ID="txtCustom0" runat="server" Width="50px" MaxLength="5"></asp:TextBox>
                    &nbsp;</label><label for="txtCustom1">&nbsp;in
                    </label>
            </p>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtCustom" ErrorMessage="Number with 2 decimal places only" Font-Size="Smaller" ForeColor="Red" ValidationExpression="^[0-9]+(\.[0-9][0-9]?)?$"></asp:RegularExpressionValidator>
            <br />
            <asp:Button ID="btSize" runat="server" Text="Select Custom Size" OnClick="btnSelectSize_Click" />

            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br />
            <br />




            <a class="btnGeneral" href="Options.aspx">NEXT</a>
            <a class="btnGeneral" href="Products.aspx">BACK</a>
            <a class="btnGeneral" href="../Help.aspx">HELP</a>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
