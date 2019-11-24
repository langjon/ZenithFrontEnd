using System;
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
                navProfile.InnerHtml= "<a href=\"../UserLogin/Update_Profile.aspx\"><img class=\"nav-icon\" src=\"../images/user-16.png\" />PROFILE</a>";
                welcomeLabel.Text = "Welcome, " + Session["UserName"].ToString();
            } 
            if (Session["EmpID"] != null)
            {
                navCart.InnerHtml = "";
                navBuild.InnerHtml = "";
                navProfile.InnerHtml = "";
               navOrder.InnerHtml = "<a href=\"../EmployeeDashboard/Dashboard.aspx\">ORDERS</a>";
                navCust.InnerHtml = "<a href=\"../EmployeeDashboard/CustomersDetails.aspx\">CUSTOMERS</a>";
                navEmp.InnerHtml = "<a href=\"../EmployeeDashboard/EmployeesDetails.aspx\">EMPLOYEES</a>";
                welcomeLabel.Text = Session["UserName"].ToString().ToUpper() + "'S DASHBAORD";
            }
        }
    }
}