using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZenithFrontEnd
{
    public partial class ProductReview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["BoxImage"] != null)
            {
                //LabelBoxType.Text = Session["BoxType"].ToString();
                boxType.ImageUrl= Session["BoxImage"].ToString();
            }
            if (Session["Size"] != null)
                LabelSize.Text = Session["Size"].ToString();
            if (Session["Material"] != null)
                LabelMaterial.Text = Session["Material"].ToString();
            if (Session["Side"] != null)
                LabelSides.Text = Session["Side"].ToString();
            if (Session["Finish"] != null)
                LabelFinish.Text = Session["Finish"].ToString();
            if (Session["Wall"] != null)
                LabelWallType.Text = Session["Wall"].ToString();
            if (Session["Quantity"] != null)
                LabelQuantity.Text = Session["Quantity"].ToString();
        }
    }
}