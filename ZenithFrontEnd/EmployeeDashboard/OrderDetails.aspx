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
             <asp:GridView ID="gvOrderDetails" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" >
                 <AlternatingRowStyle BackColor="#F7F7F7" />
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
                 <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                 <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                 <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                 <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                 <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                 <SortedAscendingCellStyle BackColor="#F4F4FD" />
                 <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                 <SortedDescendingCellStyle BackColor="#D8D8F0" />
                 <SortedDescendingHeaderStyle BackColor="#3E3277" />
             </asp:GridView>
              
         </div>
       <table class="orderTable">    
               <tr>    
                   <td class="center">    
                        <asp:Button  class="btnInsert" ID="btnApprove" runat="server" Text="Approve" OnClick="btnApprove_Click" />    
                   </td> 
                   <td class="center">    
                        <asp:Button  class="btnInsert" ID="btnSendToProduction" runat="server" Text="Send to Production" OnClick="btnSendToProduction_Click" />    
                   </td> 
                   <td class="center">    
                        <asp:Button  class="btnInsert" ID="btnProductionComplete" runat="server" Text="Production Complete" OnClick="btnProductionComplete_Click" />    
                   </td> 
                   <td class="center">    
                        <asp:Button  class="btnInsert" ID="btnShipped" runat="server" Text="Shipped" OnClick="btnShipped_Click" />    
                   </td> 
                   <td class="center">    
                       <asp:Button  class="btnInsert" ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />    
                   </td>    
               </tr>    
           </table>    
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
