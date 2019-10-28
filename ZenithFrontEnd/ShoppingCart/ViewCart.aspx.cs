using System;
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
        string[] cartItemDetails = new string[9];

        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable cartTable = new DataTable();
            cartTable.Columns.AddRange(new DataColumn[9] { new DataColumn("prodType"), new DataColumn("prodSize"), new DataColumn("prodMaterial"),
                new DataColumn("prodFinish"), new DataColumn("prodWallType"), new DataColumn("prodPrintSides"), new DataColumn("prodQuantity"),
                new DataColumn("prodDateCreated"), new DataColumn("prodPrice")});

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
                    cartTable.Rows.Add(cartItemDetails[0].ToString(), cartItemDetails[1].ToString(), cartItemDetails[2].ToString(),
                        cartItemDetails[3].ToString(), cartItemDetails[4].ToString(), cartItemDetails[5].ToString(),
                        cartItemDetails[6].ToString(), cartItemDetails[7].ToString(), cartItemDetails[8].ToString());
                }
            }

            cartListTable.DataSource = cartTable;
            cartListTable.DataBind();
        }

        protected void loadCart_Click(object sender, EventArgs e)
        {
           
        }
    }
}