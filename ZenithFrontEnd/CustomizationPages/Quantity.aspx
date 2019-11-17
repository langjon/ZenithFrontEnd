<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Quantity.aspx.cs" Inherits="ZenithFrontEnd.CustomizationPages.Quantity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style0 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            border-radius: 5px;
            height: 30px;
            width: 130px;
            background-color: steelblue;
            color: white;
            outline: none;
            user-select: none;
            float: left;
            margin-left: 57px;
        }

        .auto-style5 {
            width: 29px;
            height: 26px;
        }

        .auto-style14 {
            width: 26px;
            height: 24px;
        }

        .auto-style7 {
            width: 24px;
            height: 29px;
        }

        .auto-style15 {
            width: 27%;
        }

        .auto-style16 {
            margin-left: 160px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="errorMessages" runat="server">
    </div>

    <div id="mainBodyDiv" class="auto-style13">

        <div class="pageTitle">
            <p>BUILD YOUR BOX</p>
        </div>

        <div id="bodyDiv">

            <div id="panelDiv" class="panelDiv">
                Your Order Progress:<br />

                <asp:ImageButton ID="selectedBox" runat="server" Height="134px" Width="160px" />

                <table class="panelContents">
                    <tr>
                        <td>
                            <img alt="" class="auto-style14" src="../images/check.jpg" /></td>
                        <td>SIZE:
                            <asp:Label ID="LabelSize" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>
                            <img alt="" src="../images/check.jpg" /></td>
                        <td>PRINTING:
                            <asp:Label ID="LabelSides" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>
                            <img alt="" src="../images/check.jpg" /></td>
                        <td>MATERIAL:
                            <asp:Label ID="LabelMaterial" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>
                            <img alt="" src="../images/check.jpg" /></td>
                        <td>FINISH:
                            <asp:Label ID="LabelFinish" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>
                            <img alt="" src="../images/check.jpg" /></td>
                        <td>WALL TYPE:
                            <asp:Label ID="LabelWallType" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>
                            <img alt="" src="../images/blue%20circle.png" /></td>
                        <td>QUANTITY</td>
                    </tr>
                    <tr>
                        <td>
                            <img alt="" src="../images/circle.png" /></td>
                        <td>IMAGE UPLOAD</td>
                    </tr>
                </table>
            </div>

            <div class="customizeDiv">
                <div style="font-size: large; font-weight: bold">
                    <p>
                        Quantity<asp:RadioButtonList Width="70%" ID="quantityRadioBtn" runat="server" OnSelectedIndexChanged="quantityRadioBtn_SelectedIndexChanged" AutoPostBack="true" RepeatDirection="Horizontal" RepeatColumns="3" CellPadding="3" CellSpacing="2" Font-Names="Arial" Font-Size="Medium">
                            <asp:ListItem>  1       </asp:ListItem>
                            <asp:ListItem>  50      </asp:ListItem>
                            <asp:ListItem>  1000    </asp:ListItem>
                            <asp:ListItem>  10      </asp:ListItem>
                            <asp:ListItem>  100     </asp:ListItem>
                            <asp:ListItem>  2000    </asp:ListItem>
                            <asp:ListItem>  25      </asp:ListItem>
                            <asp:ListItem>  500     </asp:ListItem>
                            <asp:ListItem>  5000    </asp:ListItem>
                        </asp:RadioButtonList>

                    </p>
                    <%--<div class="auto-style12">
                            &nbsp;&nbsp;&nbsp;--%>
                    <p class="auto-style6">
                        <label for="customQuantity">
                            Custom Quantity:</label>
                    </p>
                    <p class="auto-style4">
                        <br />
                        <asp:TextBox CssClass="auto-style3" ID="txtCustom" runat="server" Width="34px"></asp:TextBox>&nbsp; pcs.
                    </p>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCustom" ErrorMessage="Quantity should be a positive integer " Font-Size="Smaller" ForeColor="Red" ValidationExpression="^[0-9]{0,10}$"></asp:RegularExpressionValidator>&nbsp;
                        <p class="auto-style8">
                            <br />
                            <asp:Button ID="BtnSelectQty" runat="server" Text="Select Custom Quantity" OnClick="BtnSelectQty_Click" />
                            <br />




                            <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="Medium"></asp:Label>
                        </p>
                    <a class="btnGeneral" href="ImageUpload.aspx">NEXT</a>
                    <a class="btnGeneral" href="Options.aspx">BACK</a>
                    <a class="btnGeneral" href="Help.aspx">HELP</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
