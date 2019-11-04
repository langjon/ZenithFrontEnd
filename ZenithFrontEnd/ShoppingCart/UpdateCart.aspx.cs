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
    public partial class UpdateCart : System.Web.UI.Page
    {
        string prodType, prodSize, prodMaterial, prodQuantity, prodDateCreated, prodFinish, prodPrintSides, prodWallType, prodPrice, prodImage, prodUnitPrice;
        string prodValue;
        string cartItem;
        string[] cartItemDetails = new string[12];
        string id, qty;
        int count = 0;
        double totalPrice = 0.0;

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["id"].ToString();
            qty = Request.QueryString["qty"].ToString();

            DataTable cartTable = new DataTable();
            cartTable.Rows.Clear();

            cartTable.Columns.AddRange(new DataColumn[12] { new DataColumn("prodImage"), new DataColumn("prodType"), new DataColumn("prodSize"), new DataColumn("prodMaterial"),
                new DataColumn("prodFinish"), new DataColumn("prodWallType"), new DataColumn("prodPrintSides"), new DataColumn("prodQuantity"),
                new DataColumn("prodUnitPrice"), new DataColumn("prodPrice"), new DataColumn("prodDateCreated"), new DataColumn("id")});

            ////////////////////////////////////////////////////////////////////////
            DataTable workTable = new DataTable("ShoppingCart");
            DataColumn workCol = workTable.Columns.Add("ID", typeof(Int32));
            workCol.AllowDBNull = false;
            workCol.Unique = true;
            workTable.Columns.Add("prodImage", typeof(String));
            workTable.Columns.Add("prodType", typeof(String));
            workTable.Columns.Add("prodSize", typeof(String));
            workTable.Columns.Add("prodMaterial", typeof(String));
            workTable.Columns.Add("prodFinish", typeof(String));
            workTable.Columns.Add("prodWallType", typeof(String));
            workTable.Columns.Add("prodPrintSides", typeof(String));
            workTable.Columns.Add("prodQuantity", typeof(Int32));
            workTable.Columns.Add("prodUnitPrice", typeof(Double));
            workTable.Columns.Add("prodPrice", typeof(Double));
            workTable.Columns.Add("prodDateCreated", typeof(String));

            DataRow workRow;


            //////////////////////////////////////////////////////////////////////////////

            if (Request.Cookies["cartCookie"] != null)
            {
                prodValue = Convert.ToString(Request.Cookies["cartCookie"].Value);
               
                string[] cartArray = prodValue.Split('|');

                for (int i = 0; i < cartArray.Length; i++)
                {
                    cartItem = Convert.ToString(cartArray[i].ToString());
                    string[] cartRowArray = cartItem.Split(',');
                    workRow = workTable.NewRow();//new line
                    //workRow[0] = i;
                    for (int j = 0; j < cartRowArray.Length; j++)
                    {
                        cartItemDetails[j] = cartRowArray[j].ToString();
                       // workRow[j+1]= cartRowArray[j].ToString();//newline
                    }
                    cartTable.Rows.Add(cartItemDetails[0].ToString(), cartItemDetails[1].ToString(), cartItemDetails[2].ToString(),
                        cartItemDetails[3].ToString(), cartItemDetails[4].ToString(), cartItemDetails[5].ToString(),
                        cartItemDetails[6].ToString(), cartItemDetails[7].ToString(), cartItemDetails[8].ToString(),
                        cartItemDetails[9].ToString(), cartItemDetails[10].ToString(), i.ToString());

                    
                    workRow["ID"] = i;
                    workRow["prodImage"] = cartItemDetails[0].ToString();
                    workRow["prodType"] = cartItemDetails[1].ToString();
                    workRow["prodSize"] = cartItemDetails[2].ToString();
                    workRow["prodMaterial"] = cartItemDetails[3].ToString();
                    workRow["prodFinish"] = cartItemDetails[4].ToString();
                    workRow["prodWallType"] = cartItemDetails[5].ToString();
                    workRow["prodPrintSides"] = cartItemDetails[6].ToString();
                    workRow["prodQuantity"] = cartItemDetails[7].ToString();
                    workRow["prodUnitPrice"] = cartItemDetails[8].ToString();
                    workRow["prodPrice"] = cartItemDetails[9].ToString();
                    workRow["prodDateCreated"] = cartItemDetails[10].ToString();
                    workTable.Rows.Add(workRow);

                    totalPrice += Convert.ToDouble(cartItemDetails[9]);
                }
                /*
                   workTable.Rows[id].SetField("prodQuantity", qty);                        //  workTable.Rows[id]["prodQuantity"] = qty;
                    double valuePerQty = Convert.ToDouble(workTable.Rows[id]["prodUnitPrice"].ToString());
                    double price = calcPrice(qty, valuePerQty);
                    workTable.Rows[id].SetField("prodPrice", price);                         // workTable.Rows[id]["prodPrice"] = price.ToString();
                   // workTable.AcceptChanges();
               */
               
                foreach (DataRow dr in workTable.Rows)
                { 
                    for (int x = 0; x < workTable.Rows.Count; x++)
                    {
                        if (workTable.Rows[x]["ID"].ToString() == id) 
                        {
                        workTable.Rows[x]["prodQuantity"] = qty;
                        double valuePerQty = Convert.ToDouble(workTable.Rows[x]["prodUnitPrice"].ToString());
                        double price = calcPrice(Convert.ToInt32(qty), valuePerQty);
                        workTable.Rows[x]["prodPrice"] = price.ToString();
                        workTable.AcceptChanges();
                        }
                    }
                 }
                 

                /*
                DataRow row = cartTable.Select("id="+id).FirstOrDefault();
                row["prodQuantity"] = qty.ToString();
                row["prodPrice"] = "0.0";
                */
                /*
                cartTable.Rows[id].SetField("prodQuantity", qty.ToString());
                double valuePerQty = Convert.ToDouble(cartTable.Rows[id]["prodUnitPrice"].ToString());
                cartTable.Rows[id].SetField("prodPrice", calcPrice(qty, valuePerQty));
                */


                //cartTable.Rows[id]["prodQuantity"] = qty;
                // double valuePerQty = Convert.ToDouble(cartTable.Rows[id]["prodUnitPrice"].ToString());
                // cartTable.Rows[id]["prodPrice"] = calcPrice(qty, valuePerQty).ToString();

                //
                Response.Cookies["cartCookie"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["cartCookie"].Expires = DateTime.Now.AddDays(-1);

                foreach (DataRow cartRow in workTable.Rows)
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
                    prodImage = "../" + cartRow["prodImage"].ToString();

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
                Response.Redirect("ViewCart.aspx");
            }
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