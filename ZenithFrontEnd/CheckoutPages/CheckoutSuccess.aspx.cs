﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using ZenithFrontEnd.Logic;

namespace ZenithFrontEnd.CheckoutPages
{
    public partial class CheckoutSuccess : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Server=zenithcapstone.database.windows.net;Database=ZenithCapstoneDB;User=zenith;Password=C@pst0ne!;Trusted_Connection=False;Encrypt=True");

        string order = "";
        string prodValue;
        string cartItem;
        double totalPrice = 0.0;
        string[] a = new string[12];
        string prodID;

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["page"] = "ViewCart.aspx";

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

                    prodID = "PrID_" + RNG.GetRandomNumber(16).ToString();
                    SqlCommand cmdCheck = new SqlCommand("SELECT * FROM Product WHERE ProductId LIKE @prodID");
                    con.Open();
                   

                    con.Close();
                    cartItem = Convert.ToString(cartArray[i].ToString());
                    string[] cartRowArray = cartItem.Split(',');
                    for (int j = 0; j < cartRowArray.Length; j++)
                    {
                        cartItemDetails[j] = cartRowArray[j].ToString();
                    }
                    cartTable.Rows.Add(cartItemDetails[0].ToString(), cartItemDetails[1].ToString(), cartItemDetails[2].ToString(),
                        cartItemDetails[3].ToString(), cartItemDetails[4].ToString(), cartItemDetails[5].ToString(),
                        cartItemDetails[6].ToString(), cartItemDetails[7].ToString(), cartItemDetails[8].ToString(),
                        cartItemDetails[9].ToString(), cartItemDetails[10].ToString(), i.ToString());

                    totalPrice += Convert.ToDouble(cartItemDetails[9]);
                    
                    order = Request.QueryString["order"].ToString();

                    if (order == Session["orderID"].ToString())
                    {
                        SqlCommand cmd = new SqlCommand("INSERT INTO dbo.Product(ProductID, OrderId, ProdType, ProdSize, ProdMaterial, ProdQuantity, ProdBriefDescription," +
                            "ProdSideID, ProdFinish, ProdWall, ProdUnitPrice, ProdImagePath, ProdTotalPrice) VALUES(@productId, @orderId, @prodType, @prodSize, @prodMaterial, @prodQuantity, @prodBrief," +
                            "@prodSide, @prodFinish, @prodWall, @prodUnitPrice, @prodImagePath, @totalPrice)");

                        cmd.Parameters.AddWithValue("@productId", prodID.ToString());
                        cmd.Parameters.AddWithValue("@orderId", Session["orderID"].ToString());
                        cmd.Parameters.AddWithValue("@prodType", cartItemDetails[1].ToString());
                        cmd.Parameters.AddWithValue("@prodSize", cartItemDetails[2].ToString());
                        cmd.Parameters.AddWithValue("@prodMaterial", cartItemDetails[3].ToString());
                        cmd.Parameters.AddWithValue("@prodSide", cartItemDetails[4].ToString());
                        cmd.Parameters.AddWithValue("@prodFinish", cartItemDetails[5].ToString());
                        cmd.Parameters.AddWithValue("@prodWall", cartItemDetails[6].ToString());
                        cmd.Parameters.AddWithValue("@prodQuantity", cartItemDetails[7].ToString());
                        cmd.Parameters.AddWithValue("@prodBrief", cartItemDetails[8].ToString());
                        cmd.Parameters.AddWithValue("@prodUnitPrice", cartItemDetails[9].ToString());
                        cmd.Parameters.AddWithValue("@prodImagePath", cartItemDetails[0].ToString());
                        cmd.Parameters.AddWithValue("@totalPrice", totalPrice.ToString());

                        cmd.Connection = con;
                        con.Open();
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.InsertCommand = cmd;
                        da.InsertCommand.ExecuteNonQuery();
                        con.Close();

                     
                    }
                }
                SqlCommand cmd1 = new SqlCommand("INSERT INTO Orders(OrderId, CusId, Status ) VALUES(@orderID, @cusID, @status)");
                cmd1.Parameters.AddWithValue("@orderID", Session["orderID"].ToString());
                cmd1.Parameters.AddWithValue("@cusID", Session["UserID"].ToString());
                cmd1.Parameters.AddWithValue("@status", "New");

                cmd1.Connection = con;
                con.Open();
                SqlDataAdapter da1 = new SqlDataAdapter();
                da1.InsertCommand = cmd1;
                da1.InsertCommand.ExecuteNonQuery();
                con.Close();
            }
            Session["cartCookie"] = null;
            Response.Redirect("CheckoutSummary.aspx");
        }
    }
}