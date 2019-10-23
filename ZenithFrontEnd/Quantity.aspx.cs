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

            Label1.Text = "You selected: " + customQty + " Price: CAD " + price;
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
                            Label1.Text = "Custom Quantity: " + customQty + " Price: CAD " + price;
                            Session["Quantity"] = customQty;
                            Session["Price"] = price.ToString();
                            BtnSelectQty.Text = "Select Standard Quantity from above list";
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

                customQty = null;
                if (quantityRadioBtn.SelectedIndex > -1)
                {
                    customQty = quantityRadioBtn.SelectedItem.ToString();
                    price = calcPrice(Convert.ToInt32(customQty));
                    Label1.Text = "You selected: " + customQty + " Price: CAD " + price;
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
            if (qty <1)
            {
                unitPrice = 0;
            }
            if (qty == 1)
            {
                unitPrice = 20;               
            }
            else if ( qty < 10)
            {
                unitPrice = 10;
            }
            else if (qty < 25)
            {
                unitPrice = 8;
            }
            else if (qty < 50)
            {
                unitPrice = 4;
            }
            else if (qty < 100)
            {
                unitPrice = 3;
            }
            else if (qty < 500)
            {
                unitPrice = 2;
            }
            else if (qty < 1000)
            {
                unitPrice = 1.5;
            }
            else if (qty < 2000)
            {
                unitPrice = 1.3;
            }
            else if (qty < 5000)
            {
                unitPrice = 1.2;
            }
            else
            {
                unitPrice = 1.1;
            }
            price = unitPrice * qty;
            return price;
        }
    }
}