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
        string prodType, prodSize, prodMaterial, prodQuantity, prodDateCreated, prodFinish, prodPrintSides, prodWallType, prodPrice;

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
            if (Session["Price"] != null)
                LabelPrice.Text = Session["Price"].ToString();
        }

        protected void addToCart_Click(object sender, EventArgs e)
        {
            prodType = Session["BoxType"].ToString();
            prodSize = Session["Size"].ToString();
            prodMaterial = Session["Material"].ToString();
            prodPrintSides = Session["Side"].ToString();
            prodFinish = Session["Finish"].ToString();
            prodWallType = Session["Wall"].ToString();
            prodQuantity = Session["Quantity"].ToString();
            prodPrice = Session["Price"].ToString();
            prodDateCreated = DateTime.Now.ToString();

            if (Request.Cookies["cartCookie"] == null)
            {
                Response.Cookies["cartCookie"].Value = prodType.ToString() + "," + prodSize.ToString() + "," + prodMaterial.ToString() + "," 
                    + prodPrintSides.ToString() + "," + prodFinish.ToString() + "," + prodWallType.ToString() + "," + prodQuantity.ToString() + "," 
                    + prodDateCreated.ToString() + "," + prodPrice.ToString();
                Response.Cookies["cartCookie"].Expires = DateTime.Now.AddDays(1);
            } else
            {
                Response.Cookies["cartCookie"].Value = Request.Cookies["cartCookie"].Value.ToString() + "|" + prodType.ToString() + "," + prodSize.ToString() + "," + prodMaterial.ToString() + ","
                    + prodPrintSides.ToString() + "," + prodFinish.ToString() + "," + prodWallType.ToString() + "," + prodQuantity.ToString() + ","
                    + prodDateCreated.ToString() + "," + prodPrice.ToString();
                Response.Cookies["cartCookie"].Expires = DateTime.Now.AddDays(1);
            }
            Response.Redirect("ThankYou.aspx");
        }
    }
}