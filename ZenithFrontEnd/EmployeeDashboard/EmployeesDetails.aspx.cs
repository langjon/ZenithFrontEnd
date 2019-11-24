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
        {/*
            if (Session["EmpID"] == null)
            {
                Response.Redirect("../UserLogin/UserLogin.aspx");
            }
            */
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            //SqlDataSource1.Insert();
            string empId = tbId.Text;
            string empName = tbName.Text;
            string empPhone = tbPhone.Text;
            string empEmail = tbEmail.Text;
            string empAddress = tbAddress.Text;
            string empPostal = tbPostalCode.Text;
            string empLogin = tbEmpLogin.Text;
            string empPass = tbPass.Text;
            string empRole = tbRole.Text;

            insertrowdata(empId, empName, empPhone, empEmail, empAddress,empPostal, empLogin, empPass, empRole);

            tbId.Text = "";
            tbName.Text = "";
            tbPhone.Text = "";
            tbEmail.Text = "";
            tbAddress.Text = "";
            tbPostalCode.Text = "";
            tbEmpLogin.Text = "";
            tbPass.Text = "";
            tbRole.Text = "";
        }

        private void insertrowdata(String empId, string eName, string ePhone, string eEmail, string eAddress, string ePostal, string eLoginId, string ePass, string eRole)
        {
            int result1, result2;
            string constr = ConfigurationManager.ConnectionStrings["ZenithCapstoneDBConnectionString"].ConnectionString;
            using (SqlConnection sqlCon = new SqlConnection(constr))
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO Employee (EmpId, EmpName, EmpPhone, EmpEmail, EmpAddress, EmpPostalCode) VALUES (@empId, @empName, @empPhone, @empEmail, @empAddress, @empPostalCode)");
                cmd.Parameters.AddWithValue("@empId", Convert.ToInt32(empId));
                cmd.Parameters.AddWithValue("@empName", eName);
                cmd.Parameters.AddWithValue("@empPhone", ePhone);
                cmd.Parameters.AddWithValue("@empEmail", eEmail);
                cmd.Parameters.AddWithValue("@empAddress", eAddress);
                cmd.Parameters.AddWithValue("@empPostalCode", ePostal);
                cmd.Connection = sqlCon;
                sqlCon.Open();
                result1 = cmd.ExecuteNonQuery();
                sqlCon.Close();

            }

            using (SqlConnection sqlCon2 = new SqlConnection(constr))
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO EmployeeLogin (EmployeeLoginId, EmpId, Role, Pass) VALUES (@empLoginId, @empId, @empRole, @empPass)");
                cmd.Parameters.AddWithValue("@empLoginId", eLoginId);
                cmd.Parameters.AddWithValue("@empId", Convert.ToInt32(empId));
                cmd.Parameters.AddWithValue("@empPass", ePass);
                cmd.Parameters.AddWithValue("@empRole", eRole);
                cmd.Connection = sqlCon2;
                sqlCon2.Open();
                result2 = cmd.ExecuteNonQuery();
                sqlCon2.Close();
            }
            if (result1 == 1 && result2 == 1)
            {
              //  ScriptManager.RegisterStartupScript(this, this.GetType(), "ShowSuccess", "javascript:alert('Record with employee id " + empId + " Updated Successfully');", true);
            }
            EmpGridView.DataBind();
        }

        protected void EmpGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int crow;
            crow = Convert.ToInt32(e.CommandArgument.ToString());
            string empId = EmpGridView.Rows[crow].Cells[0].Text;
            if (e.CommandName == "Delete Row")
            {               
                deleterowdata(empId);
            }
            /*
            if (e.CommandName == "Edit Row")
            {
                string empName = EmpGridView.Rows[crow].Cells[1].Text;
                string empPhone = EmpGridView.Rows[crow].Cells[2].Text;
                string empEmail = EmpGridView.Rows[crow].Cells[3].Text;
                string empAddress = EmpGridView.Rows[crow].Cells[4].Text;
                string empPostalCode = EmpGridView.Rows[crow].Cells[5].Text;
                string empLoginId = EmpGridView.Rows[crow].Cells[6].Text;
                string empPass = EmpGridView.Rows[crow].Cells[7].Text;
                string empRole = EmpGridView.Rows[crow].Cells[8].Text;
                editrowdata(empId, empName, empPhone, empEmail, empAddress, empPostalCode, empLoginId, empPass, empRole);
            }
            */
        }
        /*
        private void editrowdata(String empId, string eName, string ePhone, string eEmail, string eAddress, string ePostal, string eLoginId, string ePass, string eRole)
        {
            int result1, result2;
            string constr = ConfigurationManager.ConnectionStrings["ZenithCapstoneDBConnectionString"].ConnectionString;
            using (SqlConnection sqlCon = new SqlConnection(constr))
            {               
                SqlCommand cmd = new SqlCommand("Update Employee Set EmpName = @empName, EmpPhone = @empPhone, EmpEmail =@empEmail, EmpAddress= @empAddress, EmpPostalCode = @empPostalCode where EmpId= " + Convert.ToInt32(empId));
                cmd.Parameters.AddWithValue("@empName", eName);
                cmd.Parameters.AddWithValue("@empPhone", ePhone);
                cmd.Parameters.AddWithValue("@empEmail", eEmail);
                cmd.Parameters.AddWithValue("@empAddress", eAddress);
                cmd.Parameters.AddWithValue("@empPostalCode", ePostal);
                cmd.Connection = sqlCon;
                sqlCon.Open();
                result1 = cmd.ExecuteNonQuery();
                sqlCon.Close();
              
            }

            using (SqlConnection sqlCon2 = new SqlConnection(constr))
            {                
               SqlCommand cmd = new SqlCommand("Update EmployeeLogin Set EmployeeLoginId = @empLoginId, Pass = @empPass, Role =@empRole where EmpId= " + Convert.ToInt32(empId));
               cmd.Parameters.AddWithValue("@empLoginId", eLoginId);
               cmd.Parameters.AddWithValue("@empPass", ePass);
               cmd.Parameters.AddWithValue("@empRole", eRole);
               cmd.Connection = sqlCon2;
               sqlCon2.Open();
               result2 = cmd.ExecuteNonQuery();
                sqlCon2.Close();             
            }
            if (result1 == 1 && result2 == 1)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "ShowSuccess", "javascript:alert('Record with employee id " + empId + " Updated Successfully');", true);
            }
            EmpGridView.DataBind();
        }*/

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
        
    }
}