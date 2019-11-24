using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using ZenithFrontEnd.Logic;

namespace ZenithFrontEnd.CheckoutPages
{
    public partial class CheckoutSummary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Server=zenithcapstone.database.windows.net;Database=ZenithCapstoneDB;User=zenith;Password=C@pst0ne!;Trusted_Connection=False;Encrypt=True");

            SqlDataReader myReader = null;
            SqlCommand cmd = new SqlCommand("SELECT * FROM Customer WHERE CusID = @userID;");
            cmd.Parameters.AddWithValue("@userID", Session["UserID"].ToString());
            cmd.Connection = con;
            con.Open();
            
            myReader = cmd.ExecuteReader();

            while (myReader.Read())
            {
                txtFirstName.InnerText = (myReader["CusFirstName"].ToString().Trim());
                txtLastName.InnerText = (myReader["CusLastName"].ToString().Trim());
                txtPhone.InnerText = (myReader["CusPhone"].ToString().Trim());
                txtEmail.InnerText = (myReader["CusEmail"].ToString().Trim());
                txtCompany.InnerText = (myReader["CusCompany"].ToString().Trim());
                txtStAddress.InnerText = (myReader["CusStreetAddress"].ToString().Trim());
                dropProvince.InnerText = (myReader["CusProvince"].ToString().Trim());
                dropCountry.InnerText = (myReader["CusCountry"].ToString().Trim());
                txtPostal.InnerText = (myReader["CusPostalCode"].ToString().Trim());
            }
            con.Close();

            SqlDataReader myReader1 = null;
            SqlCommand cmd1 = new SqlCommand("SELECT * FROM Orders WHERE OrderId LIKE @OrderID;");
            cmd1.Parameters.AddWithValue("@OrderID", Session["orderID"].ToString());
            cmd1.Connection = con;
            con.Open();

            myReader1 = cmd1.ExecuteReader();

            while (myReader1.Read())
            {
                summaryOrderID.InnerText = "ORDER: " + (myReader1["OrderId"].ToString().Trim());
                summaryDate.InnerText = "DATE: " + (myReader1["OrderDate"].ToString().Trim());
            }
            con.Close();
        }   
    }
}