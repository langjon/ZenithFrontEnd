﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZenithFrontEnd
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["UserName"] != null)
            {
                navLogin.InnerHtml = "<a href=\"../UserLogin/UserLogout.aspx\"><img class=\"nav-icon\" src=\"../images/user-16.png\" />LOGOUT</a>";
                welcomeLabel.Text = "Welcome, " + Session["UserName"].ToString();
            } 
        }
    }
}