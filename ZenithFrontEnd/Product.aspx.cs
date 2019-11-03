using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZenithFrontEnd
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["BoxType"] = "";
                Session["BoxImage"] = "";
                Session["Size"] = "";
                Session["Material"] = "";
                Session["Side"] = "";
                Session["Finish"] = "";
                Session["Wall"] = "";
                Session["Quantity"] = "";
                Session["Price"] = "";
                Session["UnitPrice"] = "";
            }
            //if (Session["Username"] != null)
            //{
            //    output.InnerHtml = "<p>" + Session["Username".ToString()] + "</p>";
            //}
        }
        protected void boxHSC_Clicked(object sender, EventArgs e)
        {
            Session["BoxType"] = "BOX-HSC";
            Session["BoxImage"] = "images/BOX-HSC.jpg";
            Server.Transfer("Size.aspx");
            //Response.Redirect("Size.aspx");
        }
        protected void box4SidedRolloverTray_Clicked(object sender, EventArgs e)
        {
            Session["BoxType"] = "BOX-4-Sided-Rollover-Tray";
            Session["BoxImage"] = "images/BOX-4-Sided-Rollover-Tray.jpg";
            Server.Transfer("Size.aspx");
        }
        protected void boxRSC_Clicked(object sender, EventArgs e)
        {
            Session["BoxType"] = "BOX-RSC";
            Session["BoxImage"] = "images/BOX-RSC_BT_RS.jpg";
            Server.Transfer("Size.aspx");
        }
        protected void boxFOL_Clicked(object sender, EventArgs e)
        {
            Session["BoxType"] = "BOX-FOL";
            Session["BoxImage"] = "images/BOX-FOL.jpg";
            Server.Transfer("Size.aspx");
        }
        protected void boxCOC_Clicked(object sender, EventArgs e)
        {
            Session["BoxType"] = "BOX-COC";
            Session["BoxImage"] = "images/BOX-COC.jpg";
            Server.Transfer("Size.aspx");
        }
        protected void box5PW_Clicked(object sender, EventArgs e)
        {
            Session["BoxType"] = "BOX-5PW";
            Session["BoxImage"] = "images/BOX-5PW.jpg";
            Server.Transfer("Size.aspx");
        }
        protected void boxScoredPad_Clicked(object sender, EventArgs e)
        {
            Session["BoxType"] = "BOX-ScoredPAD";
            Session["BoxImage"] = "images/BOX-ScoredPAD.jpg";
            Server.Transfer("BoxSize.aspx");
        }
        protected void boxSlitScorePad_Clicked(object sender, EventArgs e)
        {
            Session["BoxType"] = "BOX-SlitScorePad";
            Session["BoxImage"] = "images/BOX-SlitScorePad.jpg";
            Server.Transfer("BoxSize.aspx");
        }
        protected void boxTelebox_Clicked(object sender, EventArgs e)
        {
            Session["BoxType"] = "BOX-Telebox";
            Session["BoxImage"] = "images/BOX-Telebox.jpg";
            Server.Transfer("Size.aspx");
        }
        protected void boxTube_Clicked(object sender, EventArgs e)
        {
            Session["BoxType"] = "BOX-Tube";
            Session["BoxImage"] = "images/BOX-Tube.jpg";
            Server.Transfer("Size.aspx");
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
          server control at run time. */
        }
    }
}