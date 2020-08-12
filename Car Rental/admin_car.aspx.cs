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
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Server=tcp:carforrental.database.windows.net,1433;Initial Catalog=ProjectDB;Persist Security Info=False;User ID=Thanwa;Password=Ameen20226;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            con.Open();
        }
        protected void AddCar_Click(object sender, EventArgs e)
        {
            try
            {
                FileUpload1.SaveAs(Server.MapPath("~/pic/") + Path.GetFileName(FileUpload1.FileName));
                string link = "pic/" + Path.GetFileName(FileUpload1.FileName);

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "insert into Car" + "(CarID,CarName,CarPower,CarType,stat,price,images) values(@CarID,@CarName,@CarPower,@CarType,@stat,@price,@images)";
                cmd.Parameters.AddWithValue("@CarID", carID.Text);
                cmd.Parameters.AddWithValue("@CarName", carName.Text);
                cmd.Parameters.AddWithValue("@CarPower", carPower.Text);
                cmd.Parameters.AddWithValue("@CarType", carType.Text);
                cmd.Parameters.AddWithValue("@stat", status.Text);
                cmd.Parameters.AddWithValue("@price", price.Text);
                cmd.Parameters.AddWithValue("@images", link);

                cmd.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('เพิ่มข้อมูลรถสำเร็จ');", true);

                cmd.Parameters.Clear();
            }
            catch
            {
                ClientScript.RegisterStartupScript(this.GetType(), "AddError", "alert('ไม่สามารถเพิ่มได้');", true);
            }
        }

        protected void DelCar_Click(object sender, EventArgs e)
        {
            if (carID.Text == "")
            {

                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('กรุณากรอกข้อมูลให้ครบ');", true);
            }
            else
            {
                cmd.CommandText = ("delete from Car where CarID='" + carID.Text + "'");
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('ลบข้อมูลรถสำเร็จ');", true);
            }

        }

        protected void EditCar_Click(object sender, EventArgs e)
        {
            string link = "pic/" + Path.GetFileName(FileUpload1.FileName);
            if (carID.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('กรุณากรอกข้อมูลให้ครบ');", true);

            }

            else
            {
                cmd.CommandText = ("update Car set CarName='" + carName.Text + "',CarPower='" + carPower.Text + "',CarType='" + carType.Text + "',stat='" + status.Text + "',price='" + price.Text + "',images='" + link + "' where CarID = '" + carID.Text + "'");
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('แก้ไขข้อมูลแล้ว');", true);
                carName.Text = ""; carPower.Text = ""; carType.Text = ""; status.Text = ""; price.Text = ""; link = "";
            }
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