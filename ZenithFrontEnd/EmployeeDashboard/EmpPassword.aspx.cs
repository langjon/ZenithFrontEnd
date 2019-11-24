//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;

//namespace ZenithFrontEnd.EmployeeDashboard
//{
//    public partial class EmpPassword : System.Web.UI.Page
//    {
//        protected void Page_Load(object sender, EventArgs e)
//        {

//        }
//    }
//}





using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace ZenithFrontEnd.EmployeeDashboard
{
    public partial class EmpPassword : System.Web.UI.Page
    {
        string strConnString = ConfigurationManager.ConnectionStrings["ZenithCapstoneDBConnectionString"].ConnectionString;
        string str = null;
        SqlCommand com;
        byte up;
        protected void btn_update_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            str = "select * from EmployeeLogin ";
            com = new SqlCommand(str, con);
            SqlDataReader reader = com.ExecuteReader();
            while (reader.Read())
            {
                if (txt_cpassword.Text == reader["pass"].ToString())
                {
                    up = 1;
                }
            }
            reader.Close();
            con.Close();
            if (up == 1)
            {
                con.Open();
                str = "update EmployeeLogin set Pass=@Password where EmployeeLoginId='" + Session["EmpID"].ToString() + "'";
                com = new SqlCommand(str, con);
                com.Parameters.Add(new SqlParameter("@Password", SqlDbType.VarChar, 50));
                com.Parameters["@Password"].Value = txt_npassword.Text;
                com.ExecuteNonQuery();
                con.Close();
                lbl_msg.Text = "Password changed Successfully";
            }
            else
            {
                lbl_msg.Text = "Please enter correct Current password";
            }
        }
    }
}
