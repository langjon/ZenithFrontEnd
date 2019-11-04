using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ZenithFrontEnd.ShoppingCart
{
    public partial class EditCart : System.Web.UI.Page
    {
        string prodType, prodSize, prodMaterial, prodQuantity, prodDateCreated, prodFinish, prodPrintSides, prodWallType, prodPrice, prodImage, prodUnitPrice;
        string prodValue;
        string cartItem;
        string[] cartItemDetails = new string[12];
        int id1, qty;
        int count = 0;
        double totalPrice = 0.0;


        protected void Page_Load(object sender, EventArgs e)
        {
            id1 = Convert.ToInt32(Request.QueryString["id"].ToString());

            DataTable editTable = new DataTable();
            editTable.Columns.AddRange(new DataColumn[12] { new DataColumn("prodImage"), new DataColumn("prodType"), new DataColumn("prodSize"), new DataColumn("prodMaterial"),
                new DataColumn("prodFinish"), new DataColumn("prodWallType"), new DataColumn("prodPrintSides"), new DataColumn("prodQuantity"),
                new DataColumn("prodUnitPrice"), new DataColumn("prodPrice"), new DataColumn("prodDateCreated"), new DataColumn("id")});

            if (Request.Cookies["cartCookie"] != null)
            {
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
                    editTable.Rows.Add(cartItemDetails[0].ToString(), cartItemDetails[1].ToString(), cartItemDetails[2].ToString(),
                        cartItemDetails[3].ToString(), cartItemDetails[4].ToString(), cartItemDetails[5].ToString(),
                        cartItemDetails[6].ToString(), cartItemDetails[7].ToString(), cartItemDetails[8].ToString(),
                        cartItemDetails[9].ToString(), cartItemDetails[10].ToString(), i.ToString());

                    totalPrice += Convert.ToDouble(cartItemDetails[9]);
                }
            }
            foreach (DataRow dr in editTable.Rows)
            {
                if(dr["id"].ToString().Equals(id1.ToString()))
                {
                    dr["prodQuantity"] = 1000;
                    double valuePerQty = Convert.ToDouble(editTable.Rows[id1]["prodUnitPrice"].ToString());
                    double price = calcPrice(1000, valuePerQty);
                    dr["prodPrice"] = price.ToString();
                    editTable.AcceptChanges();
                }
            }


            //editTable.Rows.RemoveAt(id1);
            Response.Cookies["cartCookie"].Expires = DateTime.Now.AddDays(-1);
            Response.Cookies["cartCookie"].Expires = DateTime.Now.AddDays(-1);

            foreach (DataRow cartRow in editTable.Rows)
            {
                prodType = cartRow["prodType"].ToString();
                prodSize = cartRow["prodSize"].ToString();
                prodMaterial = cartRow["prodMaterial"].ToString();
                prodPrintSides = cartRow["prodFinish"].ToString();
                prodFinish = cartRow["prodWallType"].ToString();
                prodWallType = cartRow["prodPrintSides"].ToString();
                prodQuantity = cartRow["prodQuantity"].ToString();
                prodDateCreated = cartRow["prodDateCreated"].ToString();
                prodUnitPrice = cartRow["prodUnitPrice"].ToString();
                prodPrice = cartRow["prodPrice"].ToString();
                prodImage = cartRow["prodImage"].ToString();

                count = count + 1;

                if (count == 1)
                {
                    Response.Cookies["cartCookie"].Value = prodImage.ToString() + "," + prodType.ToString() + "," + prodSize.ToString() + "," + prodMaterial.ToString() + ","
                    + prodPrintSides.ToString() + "," + prodFinish.ToString() + "," + prodWallType.ToString() + "," + prodQuantity.ToString() + ","
                    + prodUnitPrice.ToString() + "," + prodPrice.ToString() + "," + prodDateCreated.ToString();
                    Response.Cookies["cartCookie"].Expires = DateTime.Now.AddDays(1);
                }
                else
                {
                    Response.Cookies["cartCookie"].Value = Request.Cookies["cartCookie"].Value.ToString() + "|" + prodImage.ToString() + "," + prodType.ToString() + "," + prodSize.ToString() + "," + prodMaterial.ToString() + ","
                    + prodPrintSides.ToString() + "," + prodFinish.ToString() + "," + prodWallType.ToString() + "," + prodQuantity.ToString() + ","
                    + prodUnitPrice.ToString() + "," + prodPrice.ToString() + "," + prodDateCreated.ToString();
                    Response.Cookies["cartCookie"].Expires = DateTime.Now.AddDays(1);
                }
            }
            totalPrice = 0.0;
            //Response.Redirect("ViewCart.aspx");
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
    }
}