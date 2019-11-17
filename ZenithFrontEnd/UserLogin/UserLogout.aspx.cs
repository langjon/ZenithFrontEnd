﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZenithFrontEnd.UserLogin
{
    public partial class UserLogout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if (Session["UserName"] != null)
            {
                Session["UserName"] = null;
                Response.Redirect("../CustomizationPages/Products.aspx");
            }
        }
    }
}