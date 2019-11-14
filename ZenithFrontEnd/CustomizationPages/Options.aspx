<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Options.aspx.cs" Inherits="ZenithFrontEnd.CustomizationPages.Options" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>C&B Packaging - Options</title>
    <link rel="stylesheet" href="css/main.css" />
    <style type="text/css">
        .auto-style2 {
            width: 8%;
            height: 31px;
        }

        .auto-style7 {
            width: 24px;
            height: 31px;
        }

        .auto-style5 {
            width: 29px;
            height: 26px;
        }

        .auto-style8 {
            height: 536px;
        }

        .auto-style9 {
            width: 18%;
            height: 31px;
        }


        .auto-style11 {
            width: 20%;
            height: 31px;
        }

        .auto-style12 {
            width: 41%;
            height: 31px;
        }

        .auto-style14 {
            width: 26px;
            height: 24px;
        }

        .auto-style15 {
            margin-left: 160px;
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
                    <td>SIZE: <asp:Label ID="LabelSize" runat="server" Text="Label"></asp:Label></td>
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

        <div class="customizeDiv">
            <div style="font-size: large; font-weight: bold">
                <p class="auto-style9" style="font-family: Arial; font-size: medium">
                    Printing<asp:RadioButtonList ID="sideRadioBtn" runat="server" RepeatDirection="Horizontal" RepeatColumns="3" Font-Names="Arial" Font-Size="Small" OnSelectedIndexChanged="sideRadioBtn_SelectedIndexChanged" AutoPostBack="true" Height="33px" Width="423px">
                        <asp:ListItem Selected="True">Outside Only</asp:ListItem>
                        <asp:ListItem>Inside Only</asp:ListItem>
                        <asp:ListItem>Both Sides</asp:ListItem>
                    </asp:RadioButtonList>
                </p>
                <p class="auto-style2" style="font-family: Arial; font-size: medium">
                    Material<asp:RadioButtonList ID="materialRadioBtn" runat="server" RepeatDirection="Horizontal" RepeatColumns="3" Font-Names="Arial" Font-Size="Small" OnSelectedIndexChanged="materialRadioBtn_SelectedIndexChanged" AutoPostBack="true" Height="33px" Width="423px">
                        <asp:ListItem>Premium White</asp:ListItem>
                        <asp:ListItem>White</asp:ListItem>
                        <asp:ListItem Selected="True">Kraft</asp:ListItem>
                    </asp:RadioButtonList>
                </p>
                <p class="auto-style11" style="font-family: Arial; font-size: medium">
                    Finish<asp:RadioButtonList ID="finishRadioBtn" runat="server" RepeatDirection="Horizontal" RepeatColumns="2" Font-Names="Arial" Font-Size="Small" OnSelectedIndexChanged="finishRadioBtn_SelectedIndexChanged" AutoPostBack="true" Height="33px" Width="423px">
                        <asp:ListItem>Gloss</asp:ListItem>
                        <asp:ListItem>Matte</asp:ListItem>
                    </asp:RadioButtonList>
                </p>
                <p class="auto-style12" style="font-family: Arial; font-size: medium">
                    Wall Type<asp:RadioButtonList ID="wallRadioBtn" runat="server" RepeatDirection="Horizontal" RepeatColumns="3" Font-Names="Arial" Font-Size="Small" OnSelectedIndexChanged="wallRadioBtn_SelectedIndexChanged" AutoPostBack="true" Height="33px" Width="423px">
                        <asp:ListItem Selected="True">Single</asp:ListItem>
                        <asp:ListItem>Double</asp:ListItem>
                        <asp:ListItem>Triple</asp:ListItem>
                    </asp:RadioButtonList>
                </p>
                <%--<p class="auto-style12" style="font-family: Arial; font-size: medium">
                            &nbsp;</p>--%>

                <a class="btnGeneral" href="../Quantity.aspx">NEXT</a>
                <a class="btnGeneral" href="BoxSizes.aspx">BACK</a>
                <a class="btnGeneral" href="../Help.aspx">HELP</a>

            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
