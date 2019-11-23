<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderDetails.aspx.cs" Inherits="ZenithFrontEnd.EmployeeDashboard.OrderDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>C&B Packaging - Dashboard</title>
      <link rel="stylesheet" href="css/main.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
      <div class="pageTitle">
      <h1 >ORDER DETAILS</h1>
    </div>
    <div id="bodyDiv">
               
          
         <div class="orderGrid">
             <asp:GridView ID="gvOrderDetails" runat="server" AutoGenerateColumns="false" >
                 <Columns>
                    <asp:BoundField DataField="ProductId" HeaderText="Product ID" ReadOnly="True" SortExpression="ProductId" />
                    <asp:BoundField DataField="OrderId" HeaderText="Order ID" SortExpression="OrderId" />
                    <asp:BoundField DataField="ProdType" HeaderText="Type" SortExpression="ProdType" />
                    <asp:BoundField DataField="ProdSize" HeaderText="Size" SortExpression="ProdSize" />
                    <asp:BoundField DataField="ProdMaterial" HeaderText="Material" SortExpression="ProdMaterial" />
                    <asp:BoundField DataField="ProdQuantity" HeaderText="Quantity" SortExpression="ProdQuantity" />
                    <asp:BoundField DataField="ProdBriefDescription" HeaderText="Brief Description" SortExpression="ProdBriefDescription" />
                    <asp:BoundField DataField="ProdSideID" HeaderText="Side ID" SortExpression="ProdSideID" />
                    <asp:BoundField DataField="ProdFinish" HeaderText="Finish" SortExpression="ProdFinish" />
                    <asp:BoundField DataField="ProdWall" HeaderText="Wall" SortExpression="ProdWall" />
                    <asp:BoundField DataField="ProdUnitPrice" HeaderText="Unit Price" SortExpression="ProdUnitPrice" />
                    <asp:BoundField DataField="ProdImagePath" HeaderText="Image Path" SortExpression="ProdImagePath" />
                    <asp:BoundField DataField="ProdTotalPrice" HeaderText="Total Price" SortExpression="ProdTotalPrice" />
                    <asp:BoundField DataField="DateInserted" HeaderText="Order Date" SortExpression="DateInserted" />
                     <asp:HyperLinkField Text="Edit" DataNavigateUrlFields="OrderId,ProductId"
                          DataNavigateUrlFormatString="EditOrder.aspx?OrderId={0}&ProductId={1}" />                                     
                 </Columns>
             </asp:GridView>
              
         </div>
       <table class="orderTable">    
               <tr>    
                   <td class="center">    
                        <asp:Button ID="btnApprove" runat="server" Text="Approve" OnClick="btnApprove_Click" />    
                   </td> 
                   <td class="center">    
                        <asp:Button ID="btnSendToProduction" runat="server" Text="Send to Production" OnClick="btnSendToProduction_Click" />    
                   </td> 
                   <td class="center">    
                        <asp:Button ID="btnProductionComplete" runat="server" Text="Production Complete" OnClick="btnProductionComplete_Click" />    
                   </td> 
                   <td class="center">    
                        <asp:Button ID="btnShipped" runat="server" Text="Shipped" OnClick="btnShipped_Click" />    
                   </td> 
                   <td class="center">    
                       <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />    
                   </td>    
               </tr>    
           </table>    
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
