﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZenithFrontEnd.ShoppingCart
{
    public partial class ViewCart : System.Web.UI.Page
    {
        
        string prodValue;
        string cartItem;
        
        double totalPrice = 0.0;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            cartListTable.DataSource = null;
            cartListTable.DataBind();
            DataTable cartTable = new DataTable();
            cartTable.Columns.AddRange(new DataColumn[12] { new DataColumn("prodImage"), new DataColumn("prodType"), new DataColumn("prodSize"), new DataColumn("prodMaterial"),
                new DataColumn("prodFinish"), new DataColumn("prodWallType"), new DataColumn("prodPrintSides"), new DataColumn("prodQuantity"),
                new DataColumn("prodUnitPrice"), new DataColumn("prodPrice"), new DataColumn("prodDateCreated"), new DataColumn("id")});

            if (Request.Cookies["cartCookie"] != null)
            {
                string[] cartItemDetails = new string[12];

                prodValue = Convert.ToString(Request.Cookies["cartCookie"].Value);

                string[] cartArray = prodValue.Split('|');

                for (int i = 0; i < cartArray.Length; i++)
                {
                    cartItem = Convert.ToString(cartArray[i].ToString());
                    string[] cartRowArray = cartItem.Split(',');
                    for (int j = 0; j < cartRowArray.Length; j++)
                    {
                        cartItemDetails[j] = cartRowArray[j].ToString();
                    }
                    cartTable.Rows.Add(cartItemDetails[0].ToString(), cartItemDetails[1].ToString(), cartItemDetails[2].ToString(),
                        cartItemDetails[3].ToString(), cartItemDetails[4].ToString(), cartItemDetails[5].ToString(),
                        cartItemDetails[6].ToString(), cartItemDetails[7].ToString(), String.Format("{0:C2}", Convert.ToDouble(cartItemDetails[8])),
                        String.Format("{0:C2}", Convert.ToDouble(cartItemDetails[9])), cartItemDetails[10].ToString(), i.ToString());
                    
                   totalPrice += Convert.ToDouble(cartItemDetails[9]);
                }
            } 

            cartListTable.DataSource = cartTable;
            cartListTable.DataBind();
            lblTotal.Text =  String.Format("{0:C}", totalPrice);
            Session["cartTotal"] = totalPrice.ToString();

            if(totalPrice != 0)
            {
                addToCart.Enabled = true;
            }
            else
            {
                addToCart.Enabled = false;
            }
        }
        protected void qtyChanged(object sender, EventArgs e)
        {
           // calcPrice(Convert.ToInt32(txtQty.text),)
        }
        private double calcPrice(int qty, double valuePerQty)
        {
            double price = 0.0;
            double unitPrice = 0.0;
            
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
                unitPrice = valuePerQty - (valuePerQty * 0.600);
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
        protected void Checkout_Click(object sender, EventArgs e)
        {
            if(Session["UserID"] != null && Session["UserName"] != null)
            {
                Response.Redirect("../CheckoutPages/ConfirmShipping.aspx");
            } else
            {
                Response.Redirect("../UserLogin/UserLogin.aspx");
                Session["page"] = "ViewCart.aspx";
            }
            
        }
            protected void loadCart_Click(object sender, EventArgs e)
        {
           
        }

        protected void cartListTable_SelectedIndexChanged(object sender, EventArgs e)
        {
            string str = cartListTable.SelectedItem.FindControl("txtQty").ToString();
            Response.Write(str);
        }
    }
}