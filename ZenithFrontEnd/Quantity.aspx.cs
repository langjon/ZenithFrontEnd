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
        }

        protected void quantityRadioBtn_SelectedIndexChanged(object sender, EventArgs e)
        {
            String customQty = null;
            double price;

            customQty = quantityRadioBtn.SelectedItem.ToString();
            price = calcPrice(Convert.ToInt32(customQty));

            Label1.Text = "You selected: " + customQty + " Price per box: CAD " + price;
            Session["Quantity"] = customQty;
            Session["Price"] = price.ToString();
            BtnSelectQty.Text = "Select Custom Quantity";
        }


        protected void BtnSelectQty_Click(object sender, EventArgs e)
        {
            String customQty = null;
            double price;
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
                            price = calcPrice(Convert.ToInt32(customQty));
                            Label1.Text = "Custom Quantity: " + customQty + " Price per box: CAD " + price;
                            Session["Quantity"] = customQty;
                            Session["Price"] = price.ToString();
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
                    price = calcPrice(Convert.ToInt32(customQty));
                    Label1.Text = "You selected: " + customQty + " Price per box: CAD " + price;
                    Session["Quantity"] = customQty;
                    Session["Price"] = price.ToString();
                    BtnSelectQty.Text = "Select Custom Quantity";
                }
                else
                {
                    Label1.Text = "Please select quantity";
                }
            }


        }

        private double calcPrice(int qty)
        {
            double price = 0.0;
            double unitPrice = 0.0;
            double valuePerQty = 13.30;
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
            price = Math.Round(price, MidpointRounding.AwayFromZero);
            //return price;
            return unitPrice;
        }
    }
}