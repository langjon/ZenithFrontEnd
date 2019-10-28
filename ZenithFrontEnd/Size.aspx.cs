using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZenithFrontEnd
{
    public partial class Size : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Session["Size"] = " ";
                if (Session["Size"] == null)
                    Label1.Text = "Please select size";
                else
                    Label1.Text = "You selected: " + Session["Size"].ToString();
            }
            if (Session["BoxImage"] != null)
                selectedBox.ImageUrl = Session["BoxImage"].ToString();

        }

        protected void sizeRadioBtn_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = "You selected: " + sizeRadioBtn.SelectedItem.ToString();
            btSize.Text = "Select Custom Size";
            Session["Size"] = sizeRadioBtn.SelectedItem.ToString();
        }

       
        protected void btnSelectSize_Click(object sender, EventArgs e)
        {
            String customSize = null;
            if (btSize.Text == "Select Custom Size")
            {
                if (txtLength.Text == "" && txtWidth.Text == "" && txtDepth.Text == "")
                {
                    Label1.Text = "Please enter size";
                   
                }
                else
                {
                   
                    try
                    {
                        if (Convert.ToDouble(txtLength.Text) >= 0 &&
                            Convert.ToDouble(txtWidth.Text) >= 0 &&
                            Convert.ToDouble(txtDepth.Text) >= 0)
                        {
                            
                            customSize = txtLength.Text + " x " + txtWidth.Text + " x " + txtDepth.Text + " in";
                            Label1.Text = customSize;
                            Session["Size"] = "Custom size:" + customSize;
                            btSize.Text = "Select Standard Size from above list";
                            sizeRadioBtn.Enabled = false;
                            sizeRadioBtn.ClearSelection();
                        }
                        else
                        {
                            Label1.Text = "Invalid input";
                        }
                    }
                    catch
                    {
                        Label1.Text = "Invalid input";
                    }

                }
            }



            else if (btSize.Text == "Select Standard Size from above list")
            {
                sizeRadioBtn.Enabled = true;
                txtLength.Text = "";
                txtWidth.Text = "";
                txtDepth.Text = "";
                customSize = null;
                if (sizeRadioBtn.SelectedIndex > -1)
                {
                    Label1.Text = "You selected: " + sizeRadioBtn.SelectedItem.ToString();
                    Session["Size"] = sizeRadioBtn.SelectedItem.ToString();
                    btSize.Text = "Select Custom Size";
                }
                else
                {
                    Label1.Text = "Please select size";
                }
            }

           
        }
       
    }
}