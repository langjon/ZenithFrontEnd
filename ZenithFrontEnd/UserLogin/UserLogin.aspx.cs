using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ZenithFrontEnd.UserLogin
{
    public partial class UserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.UrlReferrer.AbsoluteUri.ToLower().Contains("viewcart.aspx") && Session["UserName"] == null){
                errorMessages.InnerHtml = "<p id='loginError'>Please log in or create an account to proceed with checkout.</p>";
            }
        }
        protected void Login_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(@"Server=zenithcapstone.database.windows.net;Database=ZenithCapstoneDB;User=zenith;Password=C@pst0ne!;Trusted_Connection=False;Encrypt=True"))
            {

                SqlCommand cmd = new SqlCommand("SELECT * FROM CustomerLogin WHERE UserName LIKE @username AND UserPass = @password;");
                cmd.Parameters.AddWithValue("@username", txtUsername.Text);
                cmd.Parameters.AddWithValue("@password", txtpwd.Text);
                cmd.Connection = con;
                con.Open();

                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                con.Close();

                bool loginSuccessful = ((ds.Tables.Count > 0) && (ds.Tables[0].Rows.Count > 0));

                if (loginSuccessful)
                {
                    Console.WriteLine("Success!");
                    //textbox value is stored in Session 
                    Session["UserName"] = txtUsername.Text;
                    Response.Redirect("../CustomizationPages/Products.aspx");
                }
                else
                {
                    errorMessages.InnerHtml = "<div id='loginError' runat='server'> <p>Either username or password was incorrect. Please try logging in again. </p> </div> ";
                    Console.WriteLine("Invalid username or password");
                }
            }
        }
    }
}