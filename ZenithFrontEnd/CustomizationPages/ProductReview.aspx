<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductReview.aspx.cs" Inherits="ZenithFrontEnd.CustomizationPages.ProductReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            font-weight: bold;
            font-size: 1.3em;
            margin-left: 260px;
            width: 899px;
        }

        .auto-style15 {
            margin-left: 9px;
            width: 9%;
            height: 255px;
        }

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

        .auto-style18 {
            width: 4%;
        }

        .auto-style19 {
            width: 100%;
            margin-left: 0px;
        }

        .auto-style5 {
            width: 29px;
            height: 26px;
        }

        .auto-style20 {
            width: 58%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="errorMessages" runat="server">
    </div>
    <div class="pageTitle">
        <p>YOUR PRODUCT SPECIFICATION</p>
    </div>

    <div id="bodyDiv" class="auto-style20">
       <div id="panelDiv" class="panelDiv">
                Your Order Progress:<br />

                <asp:ImageButton ID="boxType" runat="server" Height="134px" Width="160px" />

                <table class="panelContents">
                    <tr>
                        <td>
                            <img alt="" class="auto-style14" src="../images/check.jpg" /></td>
                        <td>SIZE</td>
                    </tr>
                    <tr>
                        <td>
                            <img alt="" src="../images/check.jpg" /></td>
                        <td>PRINTING</td>
                    </tr>
                    <tr>
                        <td>
                            <img alt="" src="../images/check.jpg" /></td>
                        <td>MATERIAL</td>
                    </tr>
                    <tr>
                        <td>
                            <img alt="" src="../images/check.jpg" /></td>
                        <td>FINISH</td>
                    </tr>
                    <tr>
                        <td>
                            <img alt="" src="../images/check.jpg" /></td>
                        <td>WALL TYPE</td>
                    </tr>
                    <tr>
                        <td>
                            <img alt="" src="../images/check.jpg" /></td>
                        <td>QUANTITY</td>
                    </tr>
                    <tr>
                        <td>
                            <img alt="" src="../images/check.jpg" /></td>
                        <td>IMAGE UPLOAD</td>
                    </tr>
                </table>
            </div>

        <div class="customizeDiv">
            <h1>Your Selection</h1>
            <table class="auto-style19">
                <tr>
                    <td class="auto-style18" style="font-family: Arial; font-size: medium; color: #4682B4">Size:</td>
                    <td>
                        <asp:Label ID="LabelSize" runat="server" Text="Please select Size" Font-Names="Arial" Font-Size="Medium"></asp:Label>
                    </td>
                    <td class="auto-style18" style="font-family: Arial; font-size: medium; color: #4682B4">Finish: </td>
                    <td>
                        <asp:Label ID="LabelFinish" runat="server" Text="Please select Finish" Font-Names="Arial" Font-Size="Medium"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18" style="font-family: Arial; color: #3169C6; font-size: medium">Material:</td>
                    <td>
                        <asp:Label ID="LabelMaterial" runat="server" Text="Please select Material" Font-Names="Arial" Font-Size="Medium"></asp:Label>
                    </td>
                    <td class="auto-style18" style="font-family: Arial; font-size: medium; color: #3169CF">Wall Type:</td>
                    <td>
                        <asp:Label ID="LabelWallType" runat="server" Text="Please select WallType" Font-Names="Arial" Font-Size="Medium"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18" style="font-family: Arial; font-size: medium; color: #3169CF">Printing: </td>
                    <td>
                        <asp:Label ID="LabelSides" runat="server" Text="Please select Sides" Font-Names="Arial" Font-Size="Medium"></asp:Label>
                    </td>
                    <td class="auto-style18" style="font-family: Arial; font-size: medium; color: #3169CF">Quantity: </td>
                    <td>
                        <asp:Label ID="LabelQuantity" runat="server" Text="Please select Quantity" Font-Names="Arial" Font-Size="Medium"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" style="font-family: Arial; font-size: medium; color: #3169CF; text-align: center;">Total Price:<asp:Label ID="LabelPrice" runat="server" Font-Bold="True" ForeColor="Black"></asp:Label>
                    </td>
                </tr>
            </table>

            <br />
            <br />
            <asp:Button CssClass="btnGeneral" ID="addToCart" runat="server" Text="ADD TO CART" OnClick="addToCart_Click" Font-Bold="True" Font-Italic="False" Font-Size="Large" Height="35px" />
            <a id="btnBack" href="ImageUpload.aspx" class="btnGeneral">BACK</a>
            <a id="btnHelp" href="Help.aspx" class="btnGeneral">HELP</a><br />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
