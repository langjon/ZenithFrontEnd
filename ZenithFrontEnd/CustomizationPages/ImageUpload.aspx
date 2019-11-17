<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ImageUpload.aspx.cs" Inherits="ZenithFrontEnd.CustomizationPages.ImageUpload" %>

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

        .auto-style11 {
            height: 170px;
        }

        .auto-style13 {
            left: 0px;
            bottom: -100px;
            height: 617px;
        }

        .auto-style5 {
            width: 29px;
            height: 26px;
        }

        .auto-style15 {
            margin-left: 9px;
            width: 9%;
            height: 255px;
        }

        .auto-style14 {
            width: 26px;
            height: 24px;
        }

        .auto-style16 {
            width: 143px;
            height: 60px;
        }

        .auto-style17 {
            margin-left: 120px;
        }

        .auto-style18 {
            margin-left: 0px;
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
                            <img alt=""src="../images/check.jpg" /></td>
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
                            <img alt="" src="../images/check.jpg" /></td>
                        <td>QUANTITY:
                            <asp:Label ID="LabelQuantity" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>
                            <img alt="" src="../images/blue%20circle.png" /></td>
                        <td>IMAGE UPLOAD: </td>
                    </tr>
                </table>
            </div>
        </div>

        <div class="customizeDiv">
            <fieldset>
                <legend>Upload Your Logo/Image</legend>
                <div id="div1" runat="server">
                    <input type="file" size="65" runat="server" id="FileUpload1" />
                </div>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
                <br />
            </fieldset>
            <br />
            <div id="div5" runat="server" visible="false" class="auto-style11">
                <fieldset>
                    <legend>Show Logo/Image<br />
                    </legend>
                    <div id="div3" runat="server">
                        <asp:Image ID="Image1" runat="server" Height="150" Width="150" ImageUrl="~/Image.gif" />
                    </div>
                </fieldset>
            </div>
            <br />
            <br />
            <div class="auto-style16">
                Image Position: 
                    <br />
                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>Right Side</asp:ListItem>
                    <asp:ListItem>Left Side</asp:ListItem>
                    <asp:ListItem>Top</asp:ListItem>
                    <asp:ListItem>Bottom</asp:ListItem>
                </asp:DropDownList>
            </div>
            Special Instructions:       
                 <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style12" Height="101px" TextMode="MultiLine" Width="434px"></asp:TextBox>
            <br />
            <br />
            <a href="ProductReview.aspx"><span class="btnGeneral">NEXT</span></a> <a id="btnBack" href="Quantity.aspx" class="btnGeneral">BACK</a> <a id="btnHelp" href="Help.aspx" class="btnGeneral">HELP</a><br />
        </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
