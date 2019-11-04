using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZenithFrontEnd
{
    public partial class Quantity : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Quantity"] == null)
                    Label1.Text = "Please select quantity";
                else
                    Label1.Text = "You selected: " + Session["Quantity"].ToString();
            }
            if (Session["BoxImage"] != null)
                selectedBox.ImageUrl = Session["BoxImage"].ToString();
           
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
            else
                LabelFinish.Text = "Not Applicable";
            if (Session["Wall"] != null)
                LabelWallType.Text = Session["Wall"].ToString();
            else
                LabelWallType.Text = "Please select Wall type";
        }

        protected void quantityRadioBtn_SelectedIndexChanged(object sender, EventArgs e)
        {
            String customQty = null;
            double price, unitPrice;

            customQty = quantityRadioBtn.SelectedItem.ToString();
            
            unitPrice = calcUnitPrice(Convert.ToDouble(Session["Length"]), Convert.ToDouble(Session["Width"]), Convert.ToDouble(Session["Depth"]),
                         Session["Side"].ToString(), Session["Material"].ToString(), Session["Finish"].ToString(), Session["Wall"].ToString());
            price = calcPrice(Convert.ToInt32(customQty), unitPrice);
            Label1.Text = "You selected: " + customQty + "Pieces," + " Price per box: CAD " + price;
            Session["Quantity"] = customQty;
            Session["UnitPrice"] = unitPrice.ToString();
            BtnSelectQty.Text = "Select Custom Quantity";
        }


        protected void BtnSelectQty_Click(object sender, EventArgs e)
        {
            String customQty = null;
            double price, unitPrice;
            if (BtnSelectQty.Text == "Select Custom Quantity")
            {
                if (txtCustom.Text == "" )
                {
                    Label1.Text = "Please enter quantity";

                }
                else
                {

                    try
                    {
                        if (Convert.ToInt32(txtCustom.Text) >= 0 )
                        {
                            customQty = txtCustom.Text ;
                            unitPrice = calcUnitPrice(Convert.ToDouble(Session["Length"]), Convert.ToDouble(Session["Width"]), Convert.ToDouble(Session["Depth"]),
                                        Session["Side"].ToString(), Session["Material"].ToString(), Session["Finish"].ToString(), Session["Wall"].ToString());
                            price = calcPrice(Convert.ToInt32(customQty), unitPrice);
                            Label1.Text = "Custom Quantity: " + customQty + " Price per box: CAD " + price;
                            Session["Quantity"] = customQty;
                            Session["UnitPrice"] = unitPrice.ToString();
                            BtnSelectQty.Text = "Select Standard Quantity from above list";
                            quantityRadioBtn.Enabled = false;
                            quantityRadioBtn.ClearSelection();
                        }
                    }
                    catch
                    {
                        Label1.Text = "Invalid input";
                    }

                }
            }



            else if (BtnSelectQty.Text == "Select Standard Quantity from above list")
            {
                quantityRadioBtn.Enabled = true;
                txtCustom.Text = "";
                customQty = null;
                if (quantityRadioBtn.SelectedIndex > -1)
                {
                    customQty = quantityRadioBtn.SelectedItem.ToString();
                    unitPrice = calcUnitPrice(Convert.ToDouble(Session["Length"]), Convert.ToDouble(Session["Width"]), Convert.ToDouble(Session["Depth"]),
                        Session["Side"].ToString(), Session["Material"].ToString(), Session["Finish"].ToString(), Session["Wall"].ToString());
                    price = calcPrice(Convert.ToInt32(customQty), unitPrice);
                    Label1.Text = "You selected: " + customQty + " Price per box: CAD " + price;
                    Session["Quantity"] = customQty;
                    Session["UnitPrice"] = unitPrice.ToString();
                    BtnSelectQty.Text = "Select Custom Quantity";
                }
                else
                {
                    Label1.Text = "Please select quantity";
                }
            }


        }
        private double calcUnitPrice(double length, double height, double width, string printingSide, string material, string finish, string wall)
        {
            double unitPrice = 0.0;
          
            //SIZE
            double l = length * 0.4;
            double h = height * 0.3;
            double w = width * 0.5;
            unitPrice = l + h + w;

            // PRINTING SIDE
            if (printingSide == "Outside Only" || printingSide == "Inside Only")
            {
                unitPrice = unitPrice + 0.50;
            }
            else if (printingSide == "Both Sides")
            {
                unitPrice = unitPrice + (unitPrice * 0.25);
            }
            //MATERIAL
            if (material == "Premium White")
            {
                unitPrice = unitPrice + 1;
            }
            else if (material == "White")
            {
                unitPrice = unitPrice + 0.5;
            }
            //FINISH
            if (finish == "Gloss")
            {
                unitPrice = unitPrice + 1;
            }
            else if (finish == "Matte")
            {
                unitPrice = unitPrice + 0.5;
            }
            //WALL
            if (wall == "Double")
            {
                unitPrice = unitPrice + 0.5;
            }
            else if(wall == "Triple")
            {
                unitPrice = unitPrice + 1;
            }
            unitPrice = Math.Round(unitPrice, 2, MidpointRounding.AwayFromZero);
            return unitPrice;
        }
        private double calcPrice(int qty, double valuePerQty)
        {
            double price = 0.0;
            double unitPrice = 0.0;
           // double valuePerQty = 13.30;
            if (qty < 1)
            {
                unitPrice = 0;
            }
            if (qty == 1)
            {
                //unitPrice = 28.00;
                //for paypal testing, amount must be less than $11
                unitPrice = 5;
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
                unitPrice = valuePerQty - (valuePerQty * 0.082);
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
            //price = Math.Round(price,2, MidpointRounding.AwayFromZero);
            price = Math.Round(price * 100) / 100;
            Session["Price"] = price.ToString();
            //return price;
            //unitPrice = Math.Round(unitPrice * 100) / 100;
            unitPrice = Math.Round(unitPrice, 2);
            var strUnitPrice = string.Format("{0:0.00}", unitPrice);
            return unitPrice;
        }
    }
}