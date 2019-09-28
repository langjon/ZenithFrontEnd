using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZenithFrontEnd
{
    public partial class Product : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            //Session value is assign on the text box  
            if (Session["Username"] != null)
            {
                txtUsername.Text = Session["Username"].ToString();

                output.InnerHtml = "<p>" + Session["Username".ToString()] + "</p>";
            }
            if (Session["Pwd"] != null)
            {
                txtpwd.Text = Session["Pwd"].ToString();
            }
        }
    }
}