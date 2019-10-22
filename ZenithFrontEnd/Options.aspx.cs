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
            if (!IsPostBack)
            {
            }

        }

        protected void sideRadioBtn_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["Side"] = sideRadioBtn.SelectedItem.ToString();
        }

        protected void finishRadioBtn_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["Finish"] = finishRadioBtn.SelectedItem.ToString();

        }

        protected void materialRadioBtn_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["Material"] = materialRadioBtn.SelectedItem.ToString();
        }
        protected void wallRadioBtn_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["Wall"] = wallRadioBtn.SelectedItem.ToString();
        }
    }
}