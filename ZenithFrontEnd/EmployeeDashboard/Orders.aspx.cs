using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZenithFrontEnd.Employee_Dashboard
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EmpID"] ==null)
            {
                Response.Redirect("../UserLogin/UserLogin.aspx");
            }
            Response.Write(Request.QueryString["OrderId"]);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Write(GridView1.SelectedRow.Cells[1].Text);
        }
    }
}