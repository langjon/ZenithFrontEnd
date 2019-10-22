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
        }

        protected void quantityRadioBtn_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = "You selected: " + quantityRadioBtn.SelectedItem.ToString();
            Session["Quantity"] = quantityRadioBtn.SelectedItem.ToString();
            BtnSelectQty.Text = "Select Custom Quantity";
        }


        protected void BtnSelectQty_Click(object sender, EventArgs e)
        {
            String customQty = null;
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
                            Label1.Text = "Custom Quantity: " + customQty;
                            Session["Quantity"] = customQty;
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
                    Label1.Text = "You selected: " + quantityRadioBtn.SelectedItem.ToString();
                    Session["Quantity"] = quantityRadioBtn.SelectedItem.ToString();
                    BtnSelectQty.Text = "Select Custom Quantity";
                }
                else
                {
                    Label1.Text = "Please select quantity";
                }
            }


        }
    }
}