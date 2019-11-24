using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ZenithFrontEnd.EmployeeDashboard
{
    public partial class EmployeesDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EmpID"] == null)
            {
                Response.Redirect("../UserLogin/UserLogin.aspx");
            }
            
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
            tbId.Text = "";
            tbName.Text = "";
            tbPhone.Text = "";
            tbEmail.Text = "";
            tbAddress.Text = "";
            tbPostalCode.Text = "";
        }
        /*

        protected void EmpGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "Delete Row")
            {
                int crow;
                crow = Convert.ToInt32(e.CommandArgument.ToString());
                string empId = EmpGridView.Rows[crow].Cells[0].Text;
                deleterowdata(empId);
            }
        }
        private void deleterowdata(String empId)
        {
            int result1, result2;
            string constr = ConfigurationManager.ConnectionStrings["ZenithCapstoneDBConnectionString"].ConnectionString;
            using (SqlConnection sqlCon = new SqlConnection(constr))
            {
                string deleteData = "delete from Employee where EmpId=" + Convert.ToInt32(empId);
                sqlCon.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = deleteData;
                cmd.Connection = sqlCon;
                result1 = cmd.ExecuteNonQuery();
                sqlCon.Close();                
            }
          
            using (SqlConnection sqlCon2 = new SqlConnection(constr))
            {
                string deleteData = "delete from EmployeeLogin where EmpId=" + Convert.ToInt32(empId);
                sqlCon2.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = deleteData;
                cmd.Connection = sqlCon2;
                result2 = cmd.ExecuteNonQuery();
                sqlCon2.Close();
            }
            if (result1 == 1 && result2 == 1)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "ShowSuccess", "javascript:alert('Record with employee id " + empId + " Deleted Successfully');", true);
            }
            EmpGridView.DataBind();
        }
        */
    }
}