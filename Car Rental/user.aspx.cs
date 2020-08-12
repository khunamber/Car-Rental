using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Rental
{
    public partial class user : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Server=tcp:carforrental.database.windows.net,1433;Initial Catalog=ProjectDB;Persist Security Info=False;User ID=Thanwa;Password=Ameen20226;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtUser.Text == "" && txtPass.Text == "" && txtFName.Text == "" && txtLName.Text == "" && txtDli.Text == "" && txtAge.Text == "" && txtEmail.Text == "" && txtTel.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('กรุณกรอกข้อมูลให้ครบ')</script>");
            }
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO Users values('" + txtUser.Text + "','" + txtPass.Text + "','" + txtFName.Text + "','" + txtLName.Text + "','" + txtDli.Text + "','" + txtAge.Text + "','" + txtEmail.Text + "','" + txtTel.Text + "')", con);
            cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('ลงทะเบียนสำเร็จแล้ว !!');", true);
            cmd.Parameters.Clear();
            con.Close();
        }

        protected void back_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/select_login.aspx");
        }
    }
}