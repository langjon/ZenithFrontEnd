<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="ZenithFrontEnd.CustomizationPages.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="mainBodyDiv">
        <div class="pageTitle">
            <p>PRODUCTS</p>
        </div>
        <div class="productTable" >
            <table style="text-align: center;">
                <tr>
                    <td>
                        <h3>Half Slotted Container</h3>
                        <asp:ImageButton ImageUrl="../images/BOX-HSC.jpg" runat="server" OnClick="boxHSC_Clicked" AutoPostBack="true" Width="80%" />
                    </td>
                    <td>
                        <h3>Full Overlap Slotted Carton</h3>
                        <asp:ImageButton ImageUrl="../images/BOX-FOL.jpg" runat="server" OnClick="boxFOL_Clicked" AutoPostBack="true" Width="80%" />
                    </td>
                    <td>
                        <h3>4 Sided Rollover Tray</h3>
                        <asp:ImageButton ImageUrl="../images/BOX-4-Sided-Rollover-Tray.jpg" runat="server" OnClick="box4SidedRolloverTray_Clicked" AutoPostBack="true" Width="80%" />
                    </td>
                    <td>
                        <h3>Regular Slotted Carton</h3>
                        <asp:ImageButton ImageUrl="../images/BOX-RSC_BT_RS.jpg" runat="server" OnClick="boxRSC_Clicked" AutoPostBack="true" Width="80%" />
                    </td>
                    <td>
                        <h3>Cut Out Carton</h3>
                        <asp:ImageButton ImageUrl="../images/BOX-COC.jpg" runat="server" OnClick="boxCOC_Clicked" AutoPostBack="true" Width="80%" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <h3>5 Panel Wrapper</h3>
                        <asp:ImageButton ImageUrl="../images/BOX-5PW.jpg" runat="server" OnClick="box5PW_Clicked" AutoPostBack="true" Width="80%" />
                    </td>
                    <td>
                        <h3>Scored Pad</h3>
                        <asp:ImageButton ImageUrl="../images/BOX-ScoredPad.jpg" runat="server" OnClick="boxScoredPad_Clicked" AutoPostBack="true" Width="80%" />
                    </td>
                    <td>
                        <h3>Slit Score Pad</h3>
                        <asp:ImageButton ImageUrl="../images/BOX-SlitScorePad.jpg" runat="server" OnClick="boxSlitScorePad_Clicked" AutoPostBack="true" Width="80%" />
                    </td>
                    <td>
                        <h3>Telebox</h3>
                        <asp:ImageButton ImageUrl="../images/BOX-Telebox.jpg" runat="server" OnClick="boxTelebox_Clicked" AutoPostBack="true" Width="80%" />
                    </td>
                    <td>
                        <h3>Tube</h3>
                        <asp:ImageButton ImageUrl="../images/BOX-Tube.jpg" runat="server" OnClick="boxTube_Clicked" AutoPostBack="true" Width="80%" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
