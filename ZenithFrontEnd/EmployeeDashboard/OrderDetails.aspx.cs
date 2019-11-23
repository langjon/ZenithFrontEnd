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
    public partial class OrderDetails : System.Web.UI.Page
    {
       // string orderID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EmpID"] == null)
            {
                Response.Redirect("../UserLogin/UserLogin.aspx");
            }
          //  orderID = Request.QueryString["OrderId"].ToString();
            if (!IsPostBack)
            {
                BindGridValues();
            }
        }
        private void BindGridValues()
        {
            string constr = ConfigurationManager.ConnectionStrings["ZenithCapstoneDBConnectionString"].ConnectionString;
            using (SqlConnection sqlCon = new SqlConnection(constr))
            {
                sqlCon.Open();
                SqlCommand cmd = new SqlCommand("select * from Product where OrderId = @orderID;");
                cmd.Parameters.AddWithValue("@orderID", Request.QueryString["OrderId"].ToString());
                cmd.Connection = sqlCon;

                SqlDataAdapter sqlDa = new SqlDataAdapter(cmd);
                DataTable dtble = new DataTable();
                sqlDa.Fill(dtble);
                gvOrderDetails.DataSource = dtble;
                gvOrderDetails.DataBind();
                sqlCon.Close();
            }
        }
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard.aspx");
        }

        

        protected void btnApprove_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["ZenithCapstoneDBConnectionString"].ConnectionString;
            using (SqlConnection sqlCon = new SqlConnection(constr))
            {
                sqlCon.Open();
                SqlCommand cmd = new SqlCommand("Update Orders Set Status = 'Approved' where OrderId = @orderID;");
                cmd.Parameters.AddWithValue("@orderID", Request.QueryString["OrderId"].ToString());
                cmd.Connection = sqlCon;

                SqlDataAdapter sqlDa = new SqlDataAdapter(cmd);
                DataTable dtble = new DataTable();
                sqlDa.Fill(dtble);
                sqlCon.Close();
            }
            Response.Redirect("Dashboard.aspx");

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

        }

        protected void btnSendToProduction_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["ZenithCapstoneDBConnectionString"].ConnectionString;
            using (SqlConnection sqlCon = new SqlConnection(constr))
            {
                sqlCon.Open();
                SqlCommand cmd = new SqlCommand("Update Orders Set Status = 'In Production' where OrderId = @orderID;");
                cmd.Parameters.AddWithValue("@orderID", Request.QueryString["OrderId"].ToString());
                cmd.Connection = sqlCon;

                SqlDataAdapter sqlDa = new SqlDataAdapter(cmd);
                DataTable dtble = new DataTable();
                sqlDa.Fill(dtble);
                sqlCon.Close();
            }
            Response.Redirect("Dashboard.aspx");

        }

        protected void btnProductionComplete_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["ZenithCapstoneDBConnectionString"].ConnectionString;
            using (SqlConnection sqlCon = new SqlConnection(constr))
            {
                sqlCon.Open();
                SqlCommand cmd = new SqlCommand("Update Orders Set Status = 'Production Complete' where OrderId = @orderID;");
                cmd.Parameters.AddWithValue("@orderID", Request.QueryString["OrderId"].ToString());
                cmd.Connection = sqlCon;

                SqlDataAdapter sqlDa = new SqlDataAdapter(cmd);
                DataTable dtble = new DataTable();
                sqlDa.Fill(dtble);
                sqlCon.Close();
            }
            Response.Redirect("Dashboard.aspx");
        }

        protected void btnShipped_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["ZenithCapstoneDBConnectionString"].ConnectionString;
            using (SqlConnection sqlCon = new SqlConnection(constr))
            {
                sqlCon.Open();
                SqlCommand cmd = new SqlCommand("Update Orders Set Status = 'Shipped' where OrderId = @orderID;");
                cmd.Parameters.AddWithValue("@orderID", Request.QueryString["OrderId"].ToString());
                cmd.Connection = sqlCon;

                SqlDataAdapter sqlDa = new SqlDataAdapter(cmd);
                DataTable dtble = new DataTable();
                sqlDa.Fill(dtble);
                sqlCon.Close();
            }
            Response.Redirect("Dashboard.aspx");
        }
    }
}