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
    public partial class ConfirmShipping : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(@"Server=zenithcapstone.database.windows.net;Database=ZenithCapstoneDB;User=zenith;Password=C@pst0ne!;Trusted_Connection=False;Encrypt=True"))
            {
                if (!IsPostBack)
                {
                    SqlDataReader myReader = null;
                    SqlCommand cmd = new SqlCommand("SELECT * FROM Customer WHERE CusID = @userID;");
                    cmd.Parameters.AddWithValue("@userID", Session["UserID"].ToString());
                    cmd.Connection = con;
                    con.Open();


                    myReader = cmd.ExecuteReader();

                    while (myReader.Read())
                    {
                        txtFirstName.Text = (myReader["CusFirstName"].ToString().Trim());
                        txtLastName.Text = (myReader["CusLastName"].ToString().Trim());
                        txtPhone.Text = (myReader["CusPhone"].ToString().Trim());
                        txtEmail.Text = (myReader["CusEmail"].ToString().Trim());
                        txtCompany.Text = (myReader["CusCompany"].ToString().Trim());
                        txtStAddress.Text = (myReader["CusStreetAddress"].ToString().Trim());
                        dropProvince.SelectedValue = (myReader["CusProvince"].ToString().Trim());
                        dropCountry.SelectedValue = (myReader["CusCountry"].ToString().Trim());
                        txtPostal.Text = (myReader["CusPostalCode"].ToString().Trim());
                    }
                    con.Close();
                }
            }
        }
        protected void ShippingUpdate_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(@"Server=zenithcapstone.database.windows.net;Database=ZenithCapstoneDB;User=zenith;Password=C@pst0ne!;Trusted_Connection=False;Encrypt=True"))
            {
                SqlCommand cmd = new SqlCommand("UPDATE Customer SET CusFirstName = @firstName, CusLastName = @lastname, " +
                    "CusPhone = @phone, CusEmail = @email, CusCompany = @company, CusStreetAddress = @stAddress," +
                    "CusProvince = @prov, CusCountry = @country, CusPostalCode = @postal WHERE CusID = @userID;");

                cmd.Parameters.AddWithValue("@userID", Session["UserID"].ToString());
                cmd.Parameters.AddWithValue("@firstName", txtFirstName.Text);
                cmd.Parameters.AddWithValue("@lastName", txtLastName.Text);
                cmd.Parameters.AddWithValue("@phone", txtPhone.Text);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@company", txtCompany.Text);
                cmd.Parameters.AddWithValue("@stAddress", txtStAddress.Text);
                cmd.Parameters.AddWithValue("@prov", dropProvince.SelectedValue);
                cmd.Parameters.AddWithValue("@country", dropCountry.SelectedValue);
                cmd.Parameters.AddWithValue("@postal", txtPostal.Text);

                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();

                con.Close();
            }
        }
        protected void Next_Click(object sender, EventArgs e)
        {
            Response.Redirect("CheckoutGateway.aspx");
        }
    }
}