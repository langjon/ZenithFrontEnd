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

                    con.Open();
                    order = Request.QueryString["order"].ToString();

                    if (order == Session["orderID"].ToString())
                    {
                        string prodID = "PrID_" + RNG.GetRandomNumber(15).ToString();
                        SqlCommand cmd = con.CreateCommand();
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "INSERT INTO dbo.Product(ProductID, OrderId, ProdType, ProdSize, ProdMaterial, ProdQuantity, ProdBriefDescription," +
                            "ProdSideID, ProdFinish, ProdWall, ProdUnitPrice, ProdImagePath, ProdTotalPrice) VALUES(@productId, @orderId, @prodType, @prodSize, @prodMaterial, @prodQuantity, @prodBrief," +
                            "@prodSide, @prodFinish, @prodUnitPrice, @prodImagePath, @totalPrice)";
                        cmd.Parameters.AddWithValue("@productId", prodID.ToString());
                        cmd.Parameters.AddWithValue("@orderId", Session["orderID"].ToString());

                        cmd.ExecuteNonQuery();
                        DataTable dt = new DataTable();
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        da.Fill(dt);

                        foreach (DataRow dr in dt.Rows)
                        {
                            SqlCommand cmd1 = con.CreateCommand();
                            cmd1.CommandType = CommandType.Text;

                        }
                    }
                }
            }
        }
    }
}