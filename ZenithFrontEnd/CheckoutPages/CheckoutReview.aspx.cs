using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ZenithFrontEnd.CheckoutPages
{
    public partial class CheckoutReview : System.Web.UI.Page
    {
        int cartTotal = 0;
        string s;
        string t;
        string[] a = new string[6];
        string order_no;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["aa"] != null)
            {
                s = Convert.ToString(Request.Cookies["aa"].Value);
                string[] strArr = s.Split('|');
                for (int i = 0; i < strArr.Length; i++)
                {
                    t = Convert.ToString(strArr[i].ToString());
                    string[] strArr1 = t.Split(',');
                    for (int j = 0; j < strArr1.Length; j++)
                    {
                        a[j] = strArr1[j].ToString();
                    }
                    cartTotal = cartTotal + (Convert.ToInt32(a[2].ToString()) * Convert.ToInt32(a[3].ToString()));
                }
                Session["cartTotal"] = cartTotal.ToString();
            }


            order_no = "test10101";
            Session["order_no"] = order_no.ToString();

            Response.Write("<form action='https://www.sandbox.paypal.com/cgi-bin/webscr' method='post' name='buyBredits' id='buyCredits'>");
            Response.Write("<input type = hidden' name='cmd' value='_xclick'>");
            Response.Write("<input type = hidden' name='business' value='zenithsheridan@gmail.com'>");
            Response.Write("<input type = hidden' name='currency_code' value='USD'>");
            Response.Write("<input type = hidden' name='item_name' value='payment for purchase'>");
            Response.Write("<input type = hidden' name='item_number' value='0'>");
            Response.Write("<input type = hidden' name='amount' value='" + Session["cartTotal"].ToString() + "'>");
            Response.Write("<input type = hidden' name='return' value='/CheckoutComplete.aspx?order=" + order_no.ToString() + "'>");
            Response.Write("</form>");

            Response.Write("<script type='text/javacript'>");
            Response.Write("document.getElementbyId('buyCredits').submit();");
            Response.Write("</script>");
        }
    }
}