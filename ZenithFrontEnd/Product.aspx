<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="ZenithFrontEnd.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>C&B Packaging - Create Account</title>
    <link rel="stylesheet" href="css/main.css" />
    <style type="text/css">
        .auto-style1 {
            width: 44%;
            height: 196px;
        }
        .auto-style2 {
            width: 50%;
            height: 246px;
        }
        .auto-style4 {
            width: 613px;
        }
        .auto-style5 {
            height: 594px;
        }
        .auto-style7 {
            height: 548px;
            width: 701px;
        }
        .auto-style8 {
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <img id="logo" src="images/wp-logo.jpg" alt="CB Logo" />
    <ul class="mainNav">
        <li><a href="https://cbdisplaypac.ca/">
            <img class="nav-icon" src="images/house-16.png" />HOME</a></li>
        <li class="navbar-right"><a href="Cart.aspx">
            <img class="nav-icon" src="images/cart-16.png" />CART</a></li>
        <li class="navbar-right"><a href="Login.aspx">
            <img class="nav-icon" src="images/user-16.png" />LOGIN</a></li>
        <li class="navbar-right"><a href="Product.aspx">
            <img class="nav-icon" src="images/BOX-16.png" />BUILD</a></li>
    </ul>
        <div class="pageTitle">
            <p>PRODUCTS</p>
            </div>
    <div class="productTable">
        <div>
           
    
        <table style="text-align: center;" class="pageTitle">
	
        <tr>
            <td class="auto-style4">
			    <h5>Half Slotted Container</h5>           
                <asp:ImageButton  ImageUrl="images/BOX-HSC.jpg" runat="server"  onclick="boxHSC_Clicked" AutoPostBack="true" Height="80%" Width="80%"/>                
            </td>

            <td class="auto-style4">
                <h5> Full Overlap Slotted Carton</h5>
                <asp:ImageButton  ImageUrl="images/BOX-FOL.jpg" runat="server"  onclick="boxFOL_Clicked" AutoPostBack="true" Height="80%" Width="80%"/>                
            </td>
       
            <td class="auto-style4">
                  <h5>4 Sided Rollover Tray</h5>				
                  <asp:ImageButton  ImageUrl="images/BOX-4-Sided-Rollover-Tray.jpg" runat="server"  onclick="box4SidedRolloverTray_Clicked" AutoPostBack="true" Height="80%" Width="80%"/>
            </td>           
       
             <td class="auto-style4">
                 <h5>Regular Slotted Carton</h5>
                 <asp:ImageButton  ImageUrl="images/BOX-RSC_BT_RS.jpg" runat="server"  onclick="boxRSC_Clicked" AutoPostBack="true" Height="80%" Width="80%"/>                
             </td>
        
             <td class="auto-style4">
                 <h5> Cut Out Carton</h5>
                 <asp:ImageButton  ImageUrl="images/BOX-COC.jpg" runat="server"  onclick="boxCOC_Clicked" AutoPostBack="true" Height="80%" Width="80%"/>                
             </td>
        </tr>
        <tr>
             <td class="auto-style4">
                 <h5> 5 Panel Wrapper</h5>
                 <asp:ImageButton  ImageUrl="images/BOX-5PW.jpg" runat="server"  onclick="box5PW_Clicked" AutoPostBack="true" Height="80%" Width="80%"/>                
             </td>
       
             <td class="auto-style4">
                 <h5> Scored Pad</h5>
                 <asp:ImageButton  ImageUrl="images/BOX-ScoredPad.jpg" runat="server"  onclick="boxScoredPad_Clicked" AutoPostBack="true" Height="80%" Width="80%"/>                
             </td>
        
             <td class="auto-style4">
                 <h5> Slit Score Pad</h5>
                 <asp:ImageButton  ImageUrl="images/BOX-SlitScorePad.jpg" runat="server"  onclick="boxSlitScorePad_Clicked" AutoPostBack="true" Height="80%" Width="80%"/>                
             </td>
        
             <td class="auto-style4">
                 <h5>Telebox</h5>
                 <asp:ImageButton  ImageUrl="images/BOX-Telebox.jpg" runat="server"  onclick="boxTelebox_Clicked" AutoPostBack="true" Height="80%" Width="80%"/>                
             </td>
         
             <td class="auto-style4">
                 <h5>Tube</h5>
                 <asp:ImageButton  ImageUrl="images/BOX-Tube.jpg" runat="server"  onclick="boxTube_Clicked" AutoPostBack="true" Height="80%" Width="80%"/>                
             </td>
           
        </tr>
    </table>
            </div>
     </div>
     </form>          
            
     
    
     <footer id="contactInfo" role="contentinfo">
        <div>
            <section>
                <div class="footerList">
                    <div></div>
                    <img style="padding-top: 20px;" src="images/footer_logo.jpg" />
                    <div style="margin-top: 10px; margin-bottom: 0px;"></div>
                    <p style="font-size: 0.9em;">We specialize in consumer-focused point of purchase displays, retail packaging and industrial packaging. We have delivered outstanding quality for leading clients across North America for over thirty years.</p>
                    <div></div>
                    <div style="margin-top: 20px; margin-bottom: 0px;"></div>
                </div>
                <div class="footerList">
                    <h4 style="margin-left: 15%; color: white; font-size: 1.2em;" data-fontsize="15" data-lineheight="22">CONTACT US TODAY</h4>
                    <ul class="footerNav">
                        <li>
                            <div>
                                <p>
                                    2560 South Sheridan Way
                                                <br />
                                    Mississauga, ON
                                                <br />
                                    L5J 2M4
                                </p>
                                <br />
                            </div>
                        </li>
                        <li style="width: 100%;">
                            <div style="color: white;">Office: 905-823-7770</div>
                        </li>
                        <li style="width: 100%;">
                            <div style="color: white;">Fax: 905-823-5239</div>
                        </li>
                        <li style="width: 100%;">
                            <div style="color: white;">Toll Free: 1-800-465-8607</div>
                        </li>
                    </ul>
                </div>
            </section>
        </div>
        <div>
            <section>
                <div class="footerList">
                    <ul class="footerNav" style="margin-top: 35px">
                        <li>
                            <div>Customer Service &amp; Sales: <a href="mailto:sales@cbdisplaypac.ca">sales@cbdisplaypac.ca</a></div>
                        </li>
                        <li>
                            <div>Career Opportunities: <a href="mailto:careers@cbdisplaypac.ca">careers@cbdisplaypac.ca </a></div>
                        </li>
                        <li>
                            <div>General Information: <a href="mailto:info@cbdisplaypac.ca">info@cbdisplaypac.ca </a></div>
                        </li>
                    </ul>
                </div>
            </section>
        </div>
        <div class="footerList">
            <h4 data-fontsize="15" data-lineheight="22">FIND US</h4>
            <div>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d23148.141671281002!2d-79.67670566217575!3d43.51239577912643!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x882b43780d2c6641%3A0xb5759ab904624153!2sC%26B+Display+Packaging+Inc!5e0!3m2!1sen!2sca!4v1520034090910" style="border: 0; width: 100%; height: 100%;"></iframe>
            </div>
            <div style="clear: both;"></div>
        </div>
    </footer>
    <footer>
        <div>
            <div id="copyright-area">
                <div>COPYRIGHT 2019. <a style="text-decoration: none; color: lightgrey;" href="http://www.cbdisplaypac.ca" target="_blank">C&amp;B Display Packaging Inc.</a></div>
            </div>
        </div>
    </footer>
   
</body>
</html>

