using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZenithFrontEnd
{
    public partial class CreateAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] fieldsArray = new string[]{"USERNAME", "PASSWORD", "CONFIRM PASSWORD", "FIRST NAME", "LAST NAME", "PHONE NUMBER", "EMAIL", "STREET ADDRESS", "PROVINCE", "COUNTRY", "POSTAL CODE"};
           
        }

        protected void Create_Click(object sender, EventArgs e)
        {
            Response.Redirect("Product.aspx");
        }
    }
}