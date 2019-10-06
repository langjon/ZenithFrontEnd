using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZenithFrontEnd
{
    public partial class CreateAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] fieldsArray = new string[] { "USERNAME", "PASSWORD", "CONFIRM PASSWORD", "FIRST NAME", "LAST NAME", "PHONE NUMBER", "EMAIL", "STREET ADDRESS", "PROVINCE", "COUNTRY", "POSTAL CODE" };

        }

        protected void Create_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(@"Server=zenithcapstone.database.windows.net;Database=ZenithCapstoneDB;User=zenith;Password=C@pst0ne!;Trusted_Connection=False;Encrypt=True"))
            {
                SqlCommand cmdCustomer = new SqlCommand("INSERT INTO dbo.Customer (CusFirstName, CusLastName, CusPhone, CusEmail, CusCompany, CusStreetAddress, CusProvince, CusCountry, CusPostalCode) VALUES (@fname, @lname, @phone, @email, @company, @staddress, @prov, @country, @postal)");
                cmdCustomer.Parameters.AddWithValue("@fname", txtFirstName.Text);
                cmdCustomer.Parameters.AddWithValue("@lname", txtLastName.Text);
                cmdCustomer.Parameters.AddWithValue("@phone", txtPhone.Text);
                cmdCustomer.Parameters.AddWithValue("@email", txtEmail.Text);
                cmdCustomer.Parameters.AddWithValue("@company", txtCompany.Text);
                cmdCustomer.Parameters.AddWithValue("@staddress", txtStAddress.Text);
                cmdCustomer.Parameters.AddWithValue("@prov", dropProvince.Text);
                cmdCustomer.Parameters.AddWithValue("@country", dropCountry.Text);
                cmdCustomer.Parameters.AddWithValue("@postal", txtPostal.Text);

                cmdCustomer.Connection = con;
                con.Open();

                SqlDataAdapter da = new SqlDataAdapter();
                da.InsertCommand = cmdCustomer;
                da.InsertCommand.ExecuteNonQuery();
                con.Close();

                SqlCommand cmdLogin = new SqlCommand("INSERT INTO dbo.CustomerLogin (UserName, UserPass, CusID) VALUES (@username, @password, (SELECT CusID FROM dbo.Customer WHERE CusEmail=@email))");

                cmdLogin.Parameters.AddWithValue("@username", txtUsername.Text);
                cmdLogin.Parameters.AddWithValue("@password", txtPwd.Text);
                cmdLogin.Parameters.AddWithValue("@email", txtEmail.Text);
                cmdLogin.Connection = con;
                con.Open();

                SqlDataAdapter da2 = new SqlDataAdapter();
                da2.InsertCommand = cmdLogin;
                da2.InsertCommand.ExecuteNonQuery();

                con.Close();
            }
            Response.Redirect("Product.aspx");
        }
    }
}