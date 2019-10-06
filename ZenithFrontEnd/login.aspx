<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ZenithFrontEnd.Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>C&B Packaging - Login</title>

    <link rel="stylesheet" href="css/main.css" />
</head>
<body>
    <img id="logo" src="images/wp-logo.jpg" alt="CB Logo" />
    <ul>
        <li><a href="https://cbdisplaypac.ca/">
            <img class="nav-icon" src="images/house-16.png" />HOME</a></li>
        <li class="navbar-right"><a href="Cart.aspx">
            <img class="nav-icon" src="images/cart-16.png" />CART</a></li>
        <li class="navbar-right"><a href="Login.aspx">
            <img class="nav-icon" src="images/user-16.png" />LOGIN</a></li>
        <li class="navbar-right"><a href="Product.aspx">
            <img class="nav-icon" src="images/BOX-16.png" />BUILD</a></li>
    </ul>
    <div id="errorMessages" runat="server">
    </div>

    <div class="pageTitle">
        <p>LOGIN OR CREATE AN ACCOUNT</p>
    </div>

    <div id="loginDiv">
        <form id="form1" runat="server">
            <div>
                <p class="subTitle">RETURNING CUSTOMERS</p>
                <p>If you already have an account with us, please log in below.</p>
                <label for="txtUsername">USERNAME</label>
                <br />
                <asp:TextBox CssClass="textbox" ID="txtUsername" runat="server" required="required"></asp:TextBox>
                <br />
                <br />
                <label for="txtpwd">PASSWORD</label>
                <br />
                <asp:TextBox TextMode="Password" CssClass="textbox" ID="txtpwd" runat="server" required="required"></asp:TextBox>
                <br />
                <br />
                <asp:Button CssClass="btnLogin" ID="btnSubmit" runat="server" OnClick="Login_Click" Text="LOG IN" />
            </div>
        </form>
    </div>
    <div id="createDiv">
        <p class="subTitle">NEW CUSTOMERS</p>
        <p>By creating an account with us, you will be able to proceed through the checkout process faster for future orders. Account will also allow you to store multiple payment and shipping addresses, view and track your orders and more.</p>

        <a id="btnCreate" href="CreateAccount.aspx">CREATE AN ACCOUNT</a>
    </div>
    <div class="fusion-footer"><footer role="contentinfo" class="fusion-footer-widget-area fusion-widget-area"><div class="fusion-row"><div class="fusion-columns fusion-columns-4 fusion-widget-area"><div class="fusion-column col-lg-3 col-md-3 col-sm-3"><section id="text-2" class="fusion-footer-widget-column widget widget_text"><div class="textwidget"><p><img alt="" data-src="/wp-content/uploads/2018/03/footer_logo.jpg" class=" lazyloaded" src="/wp-content/uploads/2018/03/footer_logo.jpg"><noscript><img src="/wp-content/uploads/2018/03/footer_logo.jpg" alt="" /></noscript></p><div class="fusion-sep-clear"></div><div class="fusion-separator fusion-full-width-sep sep-none" style="margin-top:10px;margin-bottom:0px;"></div><p>We specialize in consumer-focused point of purchase displays, retail packaging and industrial packaging. We have delivered outstanding quality for leading clients across North America for over thirty years.</p><div class="fusion-sep-clear"></div><div class="fusion-separator fusion-full-width-sep sep-none" style="margin-top:20px;margin-bottom:0px;"></div><div class="fusion-button-wrapper"><a class="fusion-button button-flat fusion-button-square button-large button-custom button-10" target="_self" href="/about/" rel="noopener noreferrer"><span class="fusion-button-text">Learn More</span></a></div></div><div style="clear:both;"></div></section></div><div class="fusion-column col-lg-3 col-md-3 col-sm-3"><section id="text-3" class="fusion-footer-widget-column widget widget_text"><h4 class="widget-title" data-fontsize="15" data-lineheight="22">CONTACT US TODAY</h4><div class="textwidget"><ul class="fusion-checklist fusion-checklist-1" style="font-size:14px;line-height:23.8px;"><li class="fusion-li-item"><span style="height:23.8px;width:23.8px;margin-right:9.8px;" class="icon-wrapper circle-no"><i class="fusion-li-icon  fa fa-home" style="color:#FFF;"></i></span><div class="fusion-li-item-content" style="margin-left:33.6px;"><p>2560 South Sheridan Way <br> Mississauga, ON <br> L5J 2M4</p></div></li><li class="fusion-li-item"><span style="height:23.8px;width:23.8px;margin-right:9.8px;" class="icon-wrapper circle-no"><i class="fusion-li-icon  fa fa-phone" style="color:#FFF;"></i></span><div class="fusion-li-item-content" style="margin-left:33.6px;">Office : 905-823-7770</div></li><li class="fusion-li-item"><span style="height:23.8px;width:23.8px;margin-right:9.8px;" class="icon-wrapper circle-no"><i class="fusion-li-icon  fa fa-fax" style="color:#FFF;"></i></span><div class="fusion-li-item-content" style="margin-left:33.6px;">Fax : 905-823-5239</div></li><li class="fusion-li-item"><span style="height:23.8px;width:23.8px;margin-right:9.8px;" class="icon-wrapper circle-no"><i class="fusion-li-icon  fa fa-phone" style="color:#FFF;"></i></span><div class="fusion-li-item-content" style="margin-left:33.6px;">Toll Free : 1-800-465-8607</div></li></ul></div><div style="clear:both;"></div></section></div><div class="fusion-column col-lg-3 col-md-3 col-sm-3"><section id="text-6" class="fusion-footer-widget-column widget widget_text"><div class="textwidget"><ul class="fusion-checklist fusion-checklist-2" style="font-size:14px;line-height:23.8px;"><li class="fusion-li-item"><span style="height:23.8px;width:23.8px;margin-right:9.8px;" class="icon-wrapper circle-no"><i class="fusion-li-icon  fa fa-envelope-o" style="color:#FFF;"></i></span><div class="fusion-li-item-content" style="margin-left:33.6px;"> Customer Service &amp; Sales: <a style="padding: 0;border-bottom: none" href="mailto:sales@cbdisplaypac.ca ">sales@cbdisplaypac.ca </a></div></li><li class="fusion-li-item"><span style="height:23.8px;width:23.8px;margin-right:9.8px;" class="icon-wrapper circle-no"><i class="fusion-li-icon  fa fa-envelope-o" style="color:#FFF;"></i></span><div class="fusion-li-item-content" style="margin-left:33.6px;"> Career Opportunities: <a style="padding: 0;border-bottom: none" href="mailto:careers@cbdisplaypac.ca">careers@cbdisplaypac.ca </a></div></li><li class="fusion-li-item"><span style="height:23.8px;width:23.8px;margin-right:9.8px;" class="icon-wrapper circle-no"><i class="fusion-li-icon  fa fa-envelope-o" style="color:#FFF;"></i></span><div class="fusion-li-item-content" style="margin-left:33.6px;"> General Information: <a style="padding: 0;border-bottom: none" href="mailto:info@cbdisplaypac.ca">info@cbdisplaypac.ca </a></div></li></ul></div><div style="clear:both;"></div></section></div><div class="fusion-column fusion-column-last col-lg-3 col-md-3 col-sm-3"><section id="text-5" class="fusion-footer-widget-column widget widget_text"><h4 class="widget-title" data-fontsize="15" data-lineheight="22">FIND US</h4><div class="textwidget"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d23148.141671281002!2d-79.67670566217575!3d43.51239577912643!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x882b43780d2c6641%3A0xb5759ab904624153!2sC%26B+Display+Packaging+Inc!5e0!3m2!1sen!2sca!4v1520034090910" frameborder="0" style="border:0" allowfullscreen=""></iframe></div><div style="clear:both;"></div></section></div><div class="fusion-clearfix"></div></div></div></footer><footer id="footer" class="fusion-footer-copyright-area"><div class="fusion-row"><div class="fusion-copyright-content"><div class="fusion-copyright-notice"><div> COPYRIGHT 2018. <a href="http://www.cbdisplaypac.ca" target="_blank">C&amp;B Display Packaging Inc.</a></div></div><div class="fusion-social-links-footer"><div class="fusion-social-networks"><div class="fusion-social-networks-wrapper"><a class="fusion-social-network-icon fusion-tooltip fusion-youtube fusion-icon-youtube" style="color:#545454;" href="https://www.youtube.com/channel/UC0SUW2WSc8TTPOuWNd6AAEA" target="_blank" rel="noopener noreferrer" data-placement="top" data-title="YouTube" data-toggle="tooltip" title="" data-original-title="YouTube"><span class="screen-reader-text">YouTube</span></a><a class="fusion-social-network-icon fusion-tooltip fusion-linkedin fusion-icon-linkedin" style="color:#545454;" href="https://www.linkedin.com/company/c-&amp;-b-display-packaging" target="_blank" rel="noopener noreferrer" data-placement="top" data-title="LinkedIn" data-toggle="tooltip" title="" data-original-title="LinkedIn"><span class="screen-reader-text">LinkedIn</span></a><a class="fusion-social-network-icon fusion-tooltip fusion-mail fusion-icon-mail" style="color:#545454;" href="mailto:support@cbdisplaypac.ca" target="_self" rel="noopener noreferrer" data-placement="top" data-title="Email" data-toggle="tooltip" title="" data-original-title="Email"><span class="screen-reader-text">Email</span></a></div></div></div></div></div></footer></div>

</body>
</html>
