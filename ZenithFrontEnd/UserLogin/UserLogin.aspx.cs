using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ZenithFrontEnd.UserLogin
{
    public partial class UserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //if (Session["page"].ToString == "ViewCart.aspx" && Session["UserName"] == null){
            //    errorMessages.InnerHtml = "<p id='loginError'>Please log in or create an account to proceed with checkout.</p>";
            //}
            
        }
        protected void Login_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["ZenithCapstoneDBConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                //customer login
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

                bool custLoginSuccessful = ((ds.Tables.Count > 0) && (ds.Tables[0].Rows.Count > 0));

                //employee login
                SqlCommand cmd2 = new SqlCommand("SELECT * FROM EmployeeLogin WHERE EmployeeLoginId LIKE @username AND Pass = @password;");
                cmd2.Parameters.AddWithValue("@username", txtUsername.Text);
                cmd2.Parameters.AddWithValue("@password", txtpwd.Text);
                cmd2.Connection = con;
                con.Open();

                DataSet ds2 = new DataSet();
                DataRow dRow2;
                SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
                da2.Fill(ds2);
                con.Close();

                bool empLoginSuccessful = ((ds2.Tables.Count > 0) && (ds2.Tables[0].Rows.Count > 0));

                if (empLoginSuccessful)
                {
                    int inc = 0;

                    Console.WriteLine("Success!");
                    //textbox value is stored in 
                    

                    Session["UserName"] = txtUsername.Text;
                    dRow2 = ds2.Tables[0].Rows[inc];
                    string role = dRow2.ItemArray.GetValue(3).ToString();
                    Session["EmpID"] = dRow2.ItemArray.GetValue(1).ToString();
                    if (role.Equals("admin"))
                    {
                        Session["Role"] = role;
                    }
                    Response.Redirect("../EmployeeDashboard/Dashboard.aspx");
                   
                }

                if (custLoginSuccessful)
                {
                    int inc = 0;

                    Console.WriteLine("Success!");
                    //textbox value is stored in Session 
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