using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace ZenithFrontEnd.UserLogin
{
    public partial class NewAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] fieldsArray = new string[] { "USERNAME", "PASSWORD", "CONFIRM PASSWORD", "FIRST NAME", "LAST NAME", "PHONE NUMBER", "EMAIL", "STREET ADDRESS", "PROVINCE", "COUNTRY", "POSTAL CODE" };
            
        }

        protected void Create_Click(object sender, EventArgs e)
        {
            SqlConnection Conn = new SqlConnection
                (ConfigurationManager.ConnectionStrings
                    ["ZenithCapstoneDBConnectionString"].ConnectionString);

            Conn.Open();
            string cmdstring = "Select count(*) from CustomerLogin where UserName= '" + txtUsername.Text + "'";
            SqlCommand userexist = new SqlCommand(cmdstring, Conn);

            int temp = Convert.ToInt32(userexist.ExecuteScalar().ToString());

            Conn.Close();
            if (temp == 1)
            {
                errorMessages.InnerHtml = "<div id='createAccountError' runat='server'> <p>Username already exists. Please try another name </p> </div> ";
                Response.Write("User Exists");

            }
            else
            {
                try
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
                        cmdLogin.Parameters.AddWithValue("@password", txtpwd.Text);
                        cmdLogin.Parameters.AddWithValue("@email", txtEmail.Text);
                        cmdLogin.Connection = con;
                        con.Open();

                        SqlDataAdapter da2 = new SqlDataAdapter();
                        da2.InsertCommand = cmdLogin;
                        da2.InsertCommand.ExecuteNonQuery();

                        con.Close();
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("Error");
                    Response.Write(ex.ToString());
                }

            }
            using (SqlConnection con = new SqlConnection(@"Server=zenithcapstone.database.windows.net;Database=ZenithCapstoneDB;User=zenith;Password=C@pst0ne!;Trusted_Connection=False;Encrypt=True"))
            {

                SqlCommand cmd = new SqlCommand("SELECT * FROM CustomerLogin WHERE UserName LIKE @username AND UserPass = @password;");
                cmd.Parameters.AddWithValue("@username", txtUsername.Text);
                cmd.Parameters.AddWithValue("@password", txtpwd.Text);
                cmd.Connection = con;
                con.Open();

                DataSet ds = new DataSet();
                DataRow dRow;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                con.Close();

                bool loginSuccessful = ((ds.Tables.Count > 0) && (ds.Tables[0].Rows.Count > 0));

                if (loginSuccessful)
                {
                    int inc = 0;
                    Console.WriteLine("Success!");
                    Session["UserName"] = txtUsername.Text;
                    dRow = ds.Tables[0].Rows[inc];
                    Session["UserID"] = dRow.ItemArray.GetValue(2).ToString();

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