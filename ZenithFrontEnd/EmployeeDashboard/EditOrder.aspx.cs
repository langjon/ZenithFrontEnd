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
    public partial class EditOrder : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("select * from Product where ProductId = @ProductId AND OrderId = @orderID;");
            cmd.Parameters.AddWithValue("@ProductId", Request.QueryString["ProductId"].ToString());
            cmd.Parameters.AddWithValue("@orderID", Request.QueryString["OrderId"].ToString());
            cmd.Connection = con;
            con.Open();

            DataSet dt = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            bool columns = ((dt.Tables.Count > 0) && (dt.Tables[0].Rows.Count > 0));

            if (columns)
            {

                lblProdId.Text = dt.Tables[0].Rows[0][0].ToString();
                lblOrderId.Text = dt.Tables[0].Rows[0][1].ToString();
                txtProdType.Text = dt.Tables[0].Rows[0][2].ToString();
                txtProdSize.Text = dt.Tables[0].Rows[0][3].ToString();
                txtProdMaterial.Text = dt.Tables[0].Rows[0][4].ToString();
                txtProdQuantity.Text = dt.Tables[0].Rows[0][5].ToString();
                txtProdBriefDescription.Text = dt.Tables[0].Rows[0][6].ToString();
                txtProdSideID.Text = dt.Tables[0].Rows[0][7].ToString();
                txtProdFinish.Text = dt.Tables[0].Rows[0][8].ToString();
                txtProdWall.Text = dt.Tables[0].Rows[0][9].ToString();
                txtProdUnitPrice.Text = dt.Tables[0].Rows[0][10].ToString();
                txtProdImagePath.Text = dt.Tables[0].Rows[0][11].ToString();
                txtProdTotalPrice.Text = dt.Tables[0].Rows[0][12].ToString();
                lblDateInserted.Text = dt.Tables[0].Rows[0][13].ToString();
            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["ZenithCapstoneDBConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("update Product set ProdType='" + txtProdType.Text
                                                    + "',ProdSize='" + txtProdSize.Text
                                                    + "',ProdMaterial='" + txtProdMaterial.Text
                                                    + "',ProdQuantity=" + Convert.ToInt32(txtProdQuantity.Text)
                                                    + ",ProdBriefDescription='" + txtProdBriefDescription.Text
                                                    + "',ProdSideID='" + txtProdSideID.Text
                                                    + "',ProdFinish='" + txtProdFinish.Text
                                                    + "',ProdWall='" + txtProdWall.Text
                                                    + "',ProdUnitPrice=" + Convert.ToDecimal(txtProdUnitPrice.Text)
                                                    + ",ProdImagePath='" + txtProdImagePath.Text
                                                     + "',ProdTotalPrice=" + Convert.ToDecimal(txtProdTotalPrice.Text)
                                                    + " where ProductId = @ProductId AND OrderId = @orderID;");
            cmd.Parameters.AddWithValue("@ProductId", Request.QueryString["ProductId"].ToString());
            cmd.Parameters.AddWithValue("@orderID", Request.QueryString["OrderId"].ToString());
            cmd.Connection = con;
            con.Open();

            int result = cmd.ExecuteNonQuery();
            con.Close();
            if (result == 1)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "ShowSuccess", "javascript:alert('Record Updated Successfully');", true);
            }
           // Response.Redirect("OrderDetails.aspx");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            string orderID = Request.QueryString["OrderId"].ToString();
            Response.Redirect("OrderDetails.aspx?OrderId=" + orderID);
        }
    }
}