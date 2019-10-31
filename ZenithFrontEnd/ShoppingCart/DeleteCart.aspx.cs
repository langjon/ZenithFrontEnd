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
    public partial class DeleteCart : System.Web.UI.Page
    {
        string prodType, prodSize, prodMaterial, prodQuantity, prodDateCreated, prodFinish, prodPrintSides, prodWallType, prodPrice, prodImage;
        string prodValue;
        string cartItem;
        string[] cartItemDetails = new string[10];
        int id;
        int count = 0;
        double totalPrice = 0.0;


        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["id"].ToString());

            DataTable cartTable = new DataTable();
            cartTable.Columns.AddRange(new DataColumn[11] { new DataColumn("prodType"), new DataColumn("prodSize"), new DataColumn("prodMaterial"),
                new DataColumn("prodFinish"), new DataColumn("prodWallType"), new DataColumn("prodPrintSides"), new DataColumn("prodQuantity"),
                new DataColumn("prodDateCreated"), new DataColumn("prodPrice"),  new DataColumn("prodImage"), new DataColumn("id") });

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
                        cartItemDetails[6].ToString(), cartItemDetails[7].ToString(), cartItemDetails[8].ToString(), cartItemDetails[9].ToString(), i.ToString());

                    //totalPrice += Convert.ToDouble(cartItemDetails[8]);
                }

            }

            cartTable.Rows.RemoveAt(id);
            Response.Cookies["cartCookie"].Expires = DateTime.Now.AddDays(-1);
            Response.Cookies["cartCookie"].Expires = DateTime.Now.AddDays(-1);

            foreach (DataRow cartRow in cartTable.Rows)
            {
                prodType = cartRow["prodType"].ToString();
                prodSize = cartRow["prodSize"].ToString();
                prodMaterial = cartRow["prodMaterial"].ToString();
                prodPrintSides = cartRow["prodFinish"].ToString();
                prodFinish = cartRow["prodWallType"].ToString();
                prodWallType = cartRow["prodPrintSides"].ToString();
                prodQuantity = cartRow["prodQuantity"].ToString();
                prodDateCreated = cartRow["prodDateCreated"].ToString();
                prodPrice = cartRow["prodPrice"].ToString();
                prodImage = "../" + cartRow["prodImage"].ToString();

                count = count + 1;

                if (count == 1)
                {
                    Response.Cookies["cartCookie"].Value = prodType.ToString() + "," + prodSize.ToString() + "," + prodMaterial.ToString() + ","
                    + prodPrintSides.ToString() + "," + prodFinish.ToString() + "," + prodWallType.ToString() + "," + prodQuantity.ToString() + ","
                    + prodDateCreated.ToString() + "," + prodPrice.ToString() + "," + prodImage.ToString();
                    Response.Cookies["cartCookie"].Expires = DateTime.Now.AddDays(1);
                }
                else
                {
                    Response.Cookies["cartCookie"].Value = Request.Cookies["cartCookie"].Value.ToString() + "|" + prodType.ToString() + "," + prodSize.ToString() + "," + prodMaterial.ToString() + ","
                        + prodPrintSides.ToString() + "," + prodFinish.ToString() + "," + prodWallType.ToString() + "," + prodQuantity.ToString() + ","
                        + prodDateCreated.ToString() + "," + prodPrice.ToString() + "," + prodImage.ToString();
                    Response.Cookies["cartCookie"].Expires = DateTime.Now.AddDays(1);
                }
            }
            totalPrice = 0.0;
            Response.Redirect("ViewCart.aspx");
        }
    }
}
