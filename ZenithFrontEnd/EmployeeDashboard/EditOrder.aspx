<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditOrder.aspx.cs" Inherits="ZenithFrontEnd.EmployeeDashboard.EditOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>C&B Packaging - Dashboard</title>
      <link rel="stylesheet" href="css/main.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div class="pageTitle">
      <h1 >EDIT ORDER</h1>
    </div>
        
    <div id="bodyDiv">
               
           <table class="orderTable">    
               <tr>    
                   <td class="headingCol">Order ID</td>    
                   <td class="valCol">    
                       <asp:Label ID="lblOrderId" runat="server" ReadOnly="true" />    
                   </td>    
               </tr>    
               <tr>    
                   <td class="headingCol">Product ID</td>    
                   <td class="valCol">    
                       <asp:Label ID="lblProdId" runat="server" />    
                   </td>    
               </tr>    
               <tr>    
                   <td class="headingCol">Box Type</td>    
                   <td class="valCol">    
                       <asp:TextBox ID="txtProdType" runat="server" style="width:100%" />    
                   </td>    
               </tr>    
               <tr>    
                   <td class="headingCol">Box Size</td>    
                   <td class="valCol">    
                       <asp:TextBox ID="txtProdSize" runat="server" style="width:100%" />    
                   </td>    
               </tr>    
               <tr>    
                   <td class="headingCol">Material</td>    
                   <td class="valCol">    
                       <asp:TextBox ID="txtProdMaterial" runat="server" style="width:100%" />    
                   </td>    
               </tr>
               <tr>    
                   <td class="headingCol">Quantity</td>    
                   <td class="valCol">    
                       <asp:TextBox ID="txtProdQuantity" runat="server" style="width:100%" />    
                   </td>    
               </tr>
               <tr>    
                   <td class="headingCol">Description</td>    
                   <td class="valCol">    
                       <asp:TextBox ID="txtProdBriefDescription" runat="server" style="width:100%" />    
                   </td>    
               </tr>
               <tr>    
                   <td class="headingCol">Printing Side</td>    
                   <td class="valCol">    
                       <asp:TextBox ID="txtProdSideID" runat="server" style="width:100%"/>    
                   </td>    
               </tr>
               <tr>    
                   <td class="headingCol">Finish</td>    
                   <td class="valCol">    
                       <asp:TextBox ID="txtProdFinish" runat="server" style="width:100%"/>    
                   </td>    
               </tr>
               <tr>    
                   <td class="headingCol">Wall</td>    
                   <td class="valCol">    
                       <asp:TextBox ID="txtProdWall" runat="server" style="width:100%"/>    
                   </td>    
               </tr>
               <tr>    
                   <td class="headingCol">Unit Price</td>    
                   <td class="valCol">    
                       <asp:TextBox ID="txtProdUnitPrice" runat="server" style="width:100%"/>    
                   </td>    
               </tr>
               <tr>    
                   <td class="headingCol">Box Image Path</td>    
                   <td class="valCol">    
                       <asp:TextBox ID="txtProdImagePath" runat="server" style="width:100%"/>    
                   </td>    
               </tr>
               <tr>    
                   <td class="headingCol">Total Price</td>    
                   <td class="valCol">    
                       <asp:TextBox ID="txtProdTotalPrice" runat="server" style="width:100%"/>    
                   </td>    
               </tr>
               <tr>    
                   <td class="headingCol">Date Ordered</td>    
                   <td class="valCol">    
                       <asp:Label ID="lblDateInserted" runat="server" />    
                   </td>    
               </tr>
               <tr>    
                   <td style="text-align:center">    
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />    
                   </td>    
                   <td style="text-align:center">    
                       <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />    
                   </td>    
               </tr>    
           </table> 
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
