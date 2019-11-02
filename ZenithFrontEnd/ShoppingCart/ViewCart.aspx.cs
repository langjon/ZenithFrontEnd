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
        string[] cartItemDetails = new string[12];
        double totalPrice = 0.0;
        
        protected void Page_Load(object sender, EventArgs e)
        {
          /*  DataTable cartTable = new DataTable();
            cartTable.Columns.AddRange(new DataColumn[12] { new DataColumn("prodImage"), new DataColumn("prodType"), new DataColumn("prodSize"), new DataColumn("prodMaterial"),
                new DataColumn("prodFinish"), new DataColumn("prodWallType"), new DataColumn("prodPrintSides"), new DataColumn("prodQuantity"),
                new DataColumn("prodUnitPrice"), new DataColumn("prodPrice"), new DataColumn("prodDateCreated"), new DataColumn("id")});
                */
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
                    workRow[0] = i;
                    for (int j = 0; j < cartRowArray.Length; j++)
                    {
                        cartItemDetails[j] = cartRowArray[j].ToString();
                        workRow[j+1] = cartRowArray[j].ToString();//newline
                    }
                  /*  cartTable.Rows.Add(cartItemDetails[0].ToString(), cartItemDetails[1].ToString(), cartItemDetails[2].ToString(),
                        cartItemDetails[3].ToString(), cartItemDetails[4].ToString(), cartItemDetails[5].ToString(),
                        cartItemDetails[6].ToString(), cartItemDetails[7].ToString(), cartItemDetails[8].ToString(),
                        cartItemDetails[9].ToString(), cartItemDetails[10].ToString(), i.ToString());
                        */
                    workTable.Rows.Add(workRow);//newline
                    totalPrice += Convert.ToDouble(cartItemDetails[9]);
                }

            }

            //cartListTable.DataSource = cartTable;
            cartListTable.DataSource = workTable;
           cartListTable.DataBind();
            lblTotal.Text = totalPrice.ToString();
        }
        protected void qtyChanged(object sender, EventArgs e)
        {
            
          
           //Response.Redirect("UpdateCart.aspx?id=0&qty=1000");
            
            
            
        }
       
        protected void loadCart_Click(object sender, EventArgs e)
        {
           
        }
    }
}