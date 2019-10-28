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
        string prodType, prodSize, prodMaterial, prodQuantity, prodDateCreated, prodFinish, prodPrintSides, prodWallType, prodPrice, prodImage;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["BoxImage"] == null &&
                Session["Size"] == null &&
                Session["Material"] == null &&
                Session["Side"] == null &&
                Session["Wall"] == null &&
                Session["Quantity"] == null)
            {
                addToCart.Enabled = false;
            }
            else
                addToCart.Enabled = true;
           
          

            if (Session["BoxImage"] != null)
            {
                //LabelBoxType.Text = Session["BoxType"].ToString();
                boxType.ImageUrl= Session["BoxImage"].ToString();
            }

            if (Session["Size"] != null)
                LabelSize.Text = Session["Size"].ToString();
            else
                LabelSize.Text = "Please Select Size";
            if (Session["Material"] != null)
                LabelMaterial.Text = Session["Material"].ToString();
            else
                LabelMaterial.Text = "Please select Material";
            if (Session["Side"] != null)
                LabelSides.Text = Session["Side"].ToString();
            else
                LabelSides.Text = "Please select printing side";
            if (Session["Finish"] != null)
                LabelFinish.Text = Session["Finish"].ToString();
            if (Session["Wall"] != null)
                LabelWallType.Text = Session["Wall"].ToString();
            else
                LabelWallType.Text = "Please select Wall type";
            if (Session["Quantity"] != null)
                LabelQuantity.Text = Session["Quantity"].ToString();
            else
                LabelQuantity.Text = "Please select Quantity";
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
            prodImage = "../" + Session["BoxImage"].ToString(); 

            if (Request.Cookies["cartCookie"] == null)
            {
                Response.Cookies["cartCookie"].Value = prodType.ToString() + "," + prodSize.ToString() + "," + prodMaterial.ToString() + "," 
                    + prodPrintSides.ToString() + "," + prodFinish.ToString() + "," + prodWallType.ToString() + "," + prodQuantity.ToString() + "," 
                    + prodDateCreated.ToString() + "," + prodPrice.ToString() + "," + prodImage.ToString();
                Response.Cookies["cartCookie"].Expires = DateTime.Now.AddDays(1);
            } else
            {
                Response.Cookies["cartCookie"].Value = Request.Cookies["cartCookie"].Value.ToString() + "|" + prodType.ToString() + "," + prodSize.ToString() + "," + prodMaterial.ToString() + ","
                    + prodPrintSides.ToString() + "," + prodFinish.ToString() + "," + prodWallType.ToString() + "," + prodQuantity.ToString() + ","
                    + prodDateCreated.ToString() + "," + prodPrice.ToString() + "," + prodImage.ToString();
                Response.Cookies["cartCookie"].Expires = DateTime.Now.AddDays(1);
            }
            Response.Redirect("/ShoppingCart/ViewCart.aspx");
        }
    }
}