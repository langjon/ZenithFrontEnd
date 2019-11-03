using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZenithFrontEnd
{
    public partial class Options : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Side"] = sideRadioBtn.SelectedItem.ToString();
            Session["Material"] = materialRadioBtn.SelectedItem.ToString();
            Session["Wall"] = wallRadioBtn.SelectedItem.ToString();
            if (materialRadioBtn.SelectedIndex == 0)
            {
                finishRadioBtn.Enabled = true;
            }
            else
            {
                finishRadioBtn.Enabled = false;
                finishRadioBtn.ClearSelection();
                Session["Finish"] = "N/A";
            }

            if (!IsPostBack)
            {
                finishRadioBtn.Enabled = false;
            }
            if (Session["BoxImage"] != null)
                selectedBox.ImageUrl = Session["BoxImage"].ToString();
        }

        protected void sideRadioBtn_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["Side"] = sideRadioBtn.SelectedItem.ToString();
        }
        protected void materialRadioBtn_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["Material"] = materialRadioBtn.SelectedItem.ToString();
            if (materialRadioBtn.SelectedIndex == 0 )
            {
                finishRadioBtn.Enabled = true;
            }
            else
            {
                finishRadioBtn.Enabled = false;
                finishRadioBtn.ClearSelection();
                Session["Finish"] = "N/A";
            }
        }
        protected void finishRadioBtn_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["Finish"] = finishRadioBtn.SelectedItem.ToString();

        }

        protected void wallRadioBtn_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["Wall"] = wallRadioBtn.SelectedItem.ToString();
        }
    }
}