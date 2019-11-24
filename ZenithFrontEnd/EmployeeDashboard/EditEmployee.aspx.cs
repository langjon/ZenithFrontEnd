using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZenithFrontEnd.EmployeeDashboard
{
    public partial class EditEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["EmpID"] == null)
            {
                Response.Redirect("../UserLogin/UserLogin.aspx");
            }
            

            if (!IsPostBack)
            {
                BindTextBoxvalues();

            }
        }
        private void BindTextBoxvalues()
        {
            string constr = ConfigurationManager.ConnectionStrings["ZenithCapstoneDBConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("select * from Employee where EmpId = @EmpId;");
            cmd.Parameters.AddWithValue("@EmpId", Request.QueryString["EmpId"].ToString());
            cmd.Connection = con;
            con.Open();

            DataSet dt = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            bool columns = ((dt.Tables.Count > 0) && (dt.Tables[0].Rows.Count > 0));

            if (columns)
            {
                
                                lblEmpId.Text = dt.Tables[0].Rows[0][0].ToString();
                                txtName.Text = dt.Tables[0].Rows[0][1].ToString();
                                txtPhone.Text = dt.Tables[0].Rows[0][2].ToString();
                                txtEmail.Text = dt.Tables[0].Rows[0][3].ToString();
                                txtAddress.Text = dt.Tables[0].Rows[0][4].ToString();
                                txtPostal.Text = dt.Tables[0].Rows[0][5].ToString();
          }
           
            SqlConnection con2 = new SqlConnection(constr);
            SqlCommand cmd2 = new SqlCommand("select * from EmployeeLogin where EmpId = @EmpId;");
            cmd2.Parameters.AddWithValue("@EmpId", Request.QueryString["EmpId"].ToString());
            cmd2.Connection = con2;
            con2.Open();

            DataSet dt2 = new DataSet();
            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            da2.Fill(dt2);

            bool columns2 = ((dt2.Tables.Count > 0) && (dt2.Tables[0].Rows.Count > 0));

            if (columns2)
            {                
                                lblLoginNameId.Text = dt2.Tables[0].Rows[0][0].ToString();
                                txtRole.Text = dt2.Tables[0].Rows[0][3].ToString();
                                txtPass.Text = dt2.Tables[0].Rows[0][2].ToString();
            }
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string empId = Request.QueryString["EmpId"].ToString();
            int result1, result2;
            string constr = ConfigurationManager.ConnectionStrings["ZenithCapstoneDBConnectionString"].ConnectionString;
            using (SqlConnection sqlCon = new SqlConnection(constr))
            {
                SqlCommand cmd = new SqlCommand("Update Employee Set EmpName = @empName, EmpPhone = @empPhone, EmpEmail =@empEmail, EmpAddress= @empAddress, EmpPostalCode = @empPostalCode where EmpId= " + Convert.ToInt32(empId));
                cmd.Parameters.AddWithValue("@empName", txtName.Text);
                cmd.Parameters.AddWithValue("@empPhone", txtPhone.Text);
                cmd.Parameters.AddWithValue("@empEmail", txtEmail.Text);
                cmd.Parameters.AddWithValue("@empAddress", txtAddress.Text);
                cmd.Parameters.AddWithValue("@empPostalCode", txtPostal.Text);
                cmd.Connection = sqlCon;
                sqlCon.Open();
                result1 = cmd.ExecuteNonQuery();
                sqlCon.Close();

            }

            using (SqlConnection sqlCon2 = new SqlConnection(constr))
            {
                SqlCommand cmd = new SqlCommand("Update EmployeeLogin Set Pass = @empPass, Role =@empRole where EmpId= " + Convert.ToInt32(empId));
                cmd.Parameters.AddWithValue("@empPass", txtPass.Text);
                cmd.Parameters.AddWithValue("@empRole", txtRole.Text);
                cmd.Connection = sqlCon2;
                sqlCon2.Open();
                result2 = cmd.ExecuteNonQuery();
                sqlCon2.Close();
            }
            if (result1 == 1 && result2 == 1)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "ShowSuccess", "javascript:alert('Record with employee id " + empId + " Updated Successfully');", true);
            }
            BindTextBoxvalues();
           
        }
        protected void btnCancel_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("EmployeesDetails.aspx");
        }


    }
    }