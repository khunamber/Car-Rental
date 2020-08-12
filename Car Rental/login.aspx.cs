using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Rental
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Server=tcp:carforrental.database.windows.net,1433;Initial Catalog=ProjectDB;Persist Security Info=False;User ID=Thanwa;Password=Ameen20226;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Reg_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/user.aspx");
        }
        protected void back_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/select_login.aspx");
        }

        protected void Log_Click1(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM Users where UserID='" + txtUser.Text + "'and Passwords='" + txtPass.Text + "'", con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('ยินดีต้อนรับเข้าสู่ระบบ');</script>");
                Response.RedirectPermanent("item.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('ไม่สามารถเข้าสู่ระบบได้ โปรดตรวจสอบ Username และ Password อีกครั้ง');</script>");
            }
            con.Close();
        }
    }
}