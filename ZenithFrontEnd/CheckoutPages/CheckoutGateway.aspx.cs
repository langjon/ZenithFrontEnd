using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using ZenithFrontEnd.Logic;

namespace ZenithFrontEnd.CheckoutPages
{
    public partial class CheckoutGateway : System.Web.UI.Page
    {
        string orderNo;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("../UserLogin/UserLogin.aspx");
            } else
            {
                orderNo = "ORD_" + RNG.GetRandomNumber(12).ToString();
                Session["orderID"] = orderNo;

                Response.Write("<form action='https://www.sandbox.paypal.com/sgi-bin/webscr' method='post' name='checkout' id='checkout'>");
                Response.Write("<input type='hidden' name='cmd' value='_xclick'>");
                Response.Write("<input type='hidden' name='business' value='sb-rk8ps467969@business.example.com'>");
                Response.Write("<input type='hidden' name='currency_mode' value='CAD'>");
                Response.Write("<input type='hidden' name='item_name' value='Payment for C&B Packaging Order'>");
                Response.Write("<input type='hidden' name='item_number' value='0'>");
                Response.Write("<input type='hidden' name='amount' value='" + Session["cartTotal"].ToString() + "'>");
                Response.Write("<input type='hidden' name='no_shipping' value='1'>");
                //Response.Write("<input type='hidden' name='return' value='http://cbpackaging.azurewebsites.net/CheckoutPages/CheckoutSuccess.aspx?order=" + orderNo.ToString() + "'>");
                //Response.Write("<input type='hidden' name='return' value='https://localhost:44308/CheckoutPages/CheckoutSuccess.aspx?order=" + orderNo.ToString() + "'>"); 
                //Response.Write("<input type='hidden' name='return' value='https://localhost:44308/CheckoutPages/PaypalResponse.aspx'>");
                Response.Write("<input type='hidden' name='return' value='http://cbpackaging.azurewebsites.net/CheckoutPages/PaypalResponse.aspx?order=" + orderNo.ToString() + "'>");
                Response.Write("<script type ='text/javascript'>");
                Response.Write("document.getElementById('checkout').submit();");
                Response.Write("</script>");
            }
        }
    }
}