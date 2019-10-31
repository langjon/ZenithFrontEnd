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
        string prodType, prodSize, prodMaterial, prodQuantity, prodDateCreated, prodFinish, prodPrintSides, prodWallType, prodPrice, prodImage, prodUnitPrice;

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
            if (Session["Quantity"] != null && Session["UnitPrice"] != null)
            {
                LabelQuantity.Text = Session["Quantity"].ToString();
                double price = calcPrice(Convert.ToInt32(Session["Quantity"].ToString()), Convert.ToDouble(Session["UnitPrice"].ToString()));
                LabelPrice.Text = price.ToString();
                Session["Price"] = price.ToString();
            }
            else
                LabelQuantity.Text = "Please select Quantity";
        }
        private double calcPrice(int qty, double valuePerQty)
        {
            double price = 0.0;
            double unitPrice = 0.0;
            //double valuePerQty = 13.30;
            if (qty < 1)
            {
                unitPrice = 0;
            }
            if (qty == 1)
            {
                unitPrice = 28.00;
            }
            else if (qty < 10)
            {
                unitPrice = 15;
            }
            else if (qty < 25)
            {
                unitPrice = valuePerQty;
            }
            else if (qty < 50)
            {
                unitPrice = valuePerQty - (valuePerQty * 0.60);
            }
            else if (qty < 100)
            {
                unitPrice = valuePerQty - (valuePerQty * 0.7082);
            }
            else if (qty < 500)
            {
                unitPrice = valuePerQty - (valuePerQty * 0.7444);
            }
            else if (qty < 1000)
            {
                unitPrice = valuePerQty - (valuePerQty * 0.82);
            }
            else if (qty < 2000)
            {
                unitPrice = valuePerQty - (valuePerQty * 0.83);
            }
            else if (qty < 5000)
            {
                unitPrice = valuePerQty - (valuePerQty * 0.84);
            }
            else
            {
                unitPrice = valuePerQty - (valuePerQty * 0.86);
            }
            price = unitPrice * qty;
            price = Math.Round(price, 2, MidpointRounding.AwayFromZero);
            return price;
        }

        protected void addToCart_Click(object sender, EventArgs e)
        {
            prodImage = "../" + Session["BoxImage"].ToString();
            prodType = Session["BoxType"].ToString();
            prodSize = Session["Size"].ToString();
            prodMaterial = Session["Material"].ToString();
            prodPrintSides = Session["Side"].ToString();
            prodFinish = Session["Finish"].ToString();
            prodWallType = Session["Wall"].ToString();
            prodQuantity = Session["Quantity"].ToString();
            prodUnitPrice = Session["UnitPrice"].ToString();
            prodPrice = Session["Price"].ToString();
            prodDateCreated = DateTime.Now.ToString();

            if (Request.Cookies["cartCookie"] == null)
            {
                Response.Cookies["cartCookie"].Value = prodImage.ToString() + "," + prodType.ToString() + "," + prodSize.ToString() + "," + prodMaterial.ToString() + "," 
                    + prodPrintSides.ToString() + "," + prodFinish.ToString() + "," + prodWallType.ToString() + "," + prodQuantity.ToString() + "," 
                    + prodUnitPrice.ToString() + "," + prodPrice.ToString() + "," + prodDateCreated.ToString();
                Response.Cookies["cartCookie"].Expires = DateTime.Now.AddDays(1); 
            } else
            {
                Response.Cookies["cartCookie"].Value = Request.Cookies["cartCookie"].Value.ToString() + "|" + prodImage.ToString() + "," + prodType.ToString() + "," + prodSize.ToString() + "," + prodMaterial.ToString() + ","
                    + prodPrintSides.ToString() + "," + prodFinish.ToString() + "," + prodWallType.ToString() + "," + prodQuantity.ToString() + ","
                    + prodUnitPrice.ToString() + "," + prodPrice.ToString() + "," + prodDateCreated.ToString();
                Response.Cookies["cartCookie"].Expires = DateTime.Now.AddDays(1);
            }
            Response.Redirect("/ShoppingCart/ViewCart.aspx");
        }
    }
}