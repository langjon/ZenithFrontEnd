using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ZenithFrontEnd.CheckoutPages
{
    public partial class CheckoutSuccess : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Server=zenithcapstone.database.windows.net;Database=ZenithCapstoneDB;User=zenith;Password=C@pst0ne!;Trusted_Connection=False;Encrypt=True");

        string order = "";
        string orderNo;
        string s;
        string t;
        string[] a = new string[12];

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            order = Request.QueryString["order"].ToString();

            if (order == Session["orderID"].ToString())
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from CustomerLogin where UserName='" + Session["Username"].ToString() + "'";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);

                foreach(DataRow dr in dt.Rows)
                {
                    SqlCommand cmd1 = con.CreateCommand();
                    cmd1.CommandType = CommandType.Text;
                    
                }
            }
        }
    }
}