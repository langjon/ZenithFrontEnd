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

namespace ZenithFrontEnd
{
    public partial class uploadImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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

        

    }
    }