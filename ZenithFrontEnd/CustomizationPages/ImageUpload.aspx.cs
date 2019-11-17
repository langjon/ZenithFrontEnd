using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;

namespace ZenithFrontEnd.CustomizationPages
{
    public partial class ImageUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["BoxImage"] != null)
                selectedBox.ImageUrl = Session["BoxImage"].ToString();

            if (Session["Size"] != null)
                LabelSize.Text = Session["Size"].ToString();
            else
                LabelSize.Text = "Please Select Size";
            if (Session["Material"] != null)
                LabelMaterial.Text = Session["Material"].ToString();
            else
                LabelMaterial.Text = "Please select Material";
            if (Session["Side"] != null)
                LabelSides.Text = Session["Side"].ToString();
            else
                LabelSides.Text = "Please select printing side";
            if (Session["Finish"] != null)
                LabelFinish.Text = Session["Finish"].ToString();
            if (Session["Wall"] != null)
                LabelWallType.Text = Session["Wall"].ToString();
            else
                LabelWallType.Text = "Please select Wall type";
            if (Session["Quantity"] != null && Session["UnitPrice"] != null)
            {
                LabelQuantity.Text = Session["Quantity"].ToString();
                //double price = calcPrice(Convert.ToInt32(Session["Quantity"].ToString()), Convert.ToDouble(Session["UnitPrice"].ToString()));
                //LabelPrice.Text = price.ToString();
                //Session["Price"] = price.ToString();
            }
            else
                LabelQuantity.Text = "Please select Quantity";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            div5.Visible = true;
            HttpFileCollection uploadFilCol = Request.Files;
            for (int i = 0; i < uploadFilCol.Count; i++)
            {
                HttpPostedFile file = uploadFilCol[i];
                string fileExt = Path.GetExtension(file.FileName).ToLower();
                string fileName = Path.GetFileName(file.FileName);
                if (fileName != string.Empty)
                {
                    try
                    {
                        if (fileExt == ".jpg" || fileExt == ".gif" || fileExt == ".bmp" || fileExt == ".jpeg" || fileExt == ".png")
                        {
                            file.SaveAs(Server.MapPath("~/Images/") + fileName);
                            if (i == 0)
                            {
                                Image1.ImageUrl = "~/Images/" + fileName;
                            }

                        }
                    }
                    catch (Exception ex)
                    {
                        throw ex;
                    }
                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}