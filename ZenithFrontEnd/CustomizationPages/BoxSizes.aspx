<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BoxSizes.aspx.cs" Inherits="ZenithFrontEnd.CustomizationPages.BoxSizes1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>C&B Packaging - Size</title>

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

        .auto-style6 {
            width: 129px;
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
    <div id="errorMessages" runat="server">
    </div>
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
                    <asp:ListItem>   6 x 6 x 6 in       </asp:ListItem>
                    <asp:ListItem>   8 x 8 x 8 in       </asp:ListItem>
                    <asp:ListItem>   10 x 10 x 10 in    </asp:ListItem>
                    <asp:ListItem>   12 x 12 x 8 in     </asp:ListItem>
                    <asp:ListItem>   12 x 12 x 12 in    </asp:ListItem>
                    <asp:ListItem>   12 x 12 x 4 in     </asp:ListItem>
                    <asp:ListItem>   12 x 12 x 6 in     </asp:ListItem>
                    <asp:ListItem>   14 x 14 x 14 in    </asp:ListItem>
                    <asp:ListItem>   16 x 16 x 12 in    </asp:ListItem>
                    <asp:ListItem>   16 x 16 x 16 in    </asp:ListItem>
                    <asp:ListItem>   24 x 12 x 12 in    </asp:ListItem>
                    <asp:ListItem>   24 x 16 x 16 in    </asp:ListItem>
                </asp:RadioButtonList>

            </div>

            <div id="sizeDiv">
                <div style="font-size: large; font-weight: bold">
                    <div class="auto-style12">
                        &nbsp;&nbsp;&nbsp;
                      
                     <p class="auto-style6" style="font-family: Arial; font-size: medium; font-weight: normal; font-style: normal;">

                         <label for="customSize" style="font-family: Arial; font-size: medium; font-style: normal;">
                             Custom Size:</label>
                     </p>
                        <p class="auto-style4" style="font-family: Arial; font-size: small">
                            <br />
                            <label for="txtLength" style="font-family: Arial; font-size: small">
                                Length
                         <asp:TextBox CssClass="sizeField" ID="txtLength" runat="server" Width="50px" MaxLength="5"></asp:TextBox>&nbsp;x&nbsp;
                            </label>
                            <label for="txtWidth">
                                Width
                         <asp:TextBox CssClass="sizeField" ID="txtWidth" runat="server" Width="50px" MaxLength="5"></asp:TextBox>&nbsp;x&nbsp;
                            </label>
                            <label for="txtDepth" style="font-family: Arial; font-size: small">
                                Depth
                         <asp:TextBox CssClass="sizeField" ID="txtDepth" runat="server" Width="50px" MaxLength="5"></asp:TextBox>&nbsp;in
                            </label>
                        </p>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtLength" ErrorMessage="Length should be a positive number " Font-Size="Smaller" ForeColor="Red" ValidationExpression="^[0-9]+(\.[0-9][0-9]?)?$"></asp:RegularExpressionValidator>&nbsp;
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtWidth" ErrorMessage="Width should be a positive number" Font-Size="Smaller" ForeColor="Red" ValidationExpression="^[0-9]+(\.[0-9][0-9]?)?$"></asp:RegularExpressionValidator>&nbsp;
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtDepth" ErrorMessage="Depth should be a positive number" Font-Size="Smaller" ForeColor="Red" ValidationExpression="^[0-9]+(\.[0-9][0-9]?)?$"></asp:RegularExpressionValidator>&nbsp;
                    <br />
                        <asp:Button ID="btSize" runat="server" Text="Select Custom Size" OnClick="btnSelectSize_Click" />

                        &nbsp;&nbsp;&nbsp;&nbsp;

                            <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="Medium"></asp:Label>
                        <br />
                        <br />

                        <a class="btnGeneral" href="options.aspx">NEXT</a>
                        <a class="btnGeneral" href="Product.aspx">BACK</a>
                        <a class="btnGeneral" href="Help.aspx">HELP</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
