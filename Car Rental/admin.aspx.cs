using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Car_Rental
{
    public partial class admin : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Server=tcp:carforrental.database.windows.net,1433;Initial Catalog=ProjectDB;Persist Security Info=False;User ID=Thanwa;Password=Ameen20226;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            con.Open();
        }
        
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/select_login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/admin_car.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/admin_location.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/admin_customer.aspx");
        }
    }
}