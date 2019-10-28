using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZenithFrontEnd.ShoppingCart
{
    public partial class testing : System.Web.UI.Page
    {
        string s;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void printCookie_Click(object sender, EventArgs e)
        {
            s = Convert.ToString(Request.Cookies["cartCookie"].Value);
            string[] strArr = s.Split('.');
            for (int i = 0; i < strArr.Length; i++)
            {
                Response.Write(strArr[i].ToString());
                Response.Write("<br>");
            }
        }
    }
}