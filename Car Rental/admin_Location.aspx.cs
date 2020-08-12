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
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        DataSet ds = new DataSet();

        private SqlCommand sqlCommand;
        private SqlDataReader reader;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Server=tcp:carforrental.database.windows.net,1433;Initial Catalog=ProjectDB;Persist Security Info=False;User ID=Thanwa;Password=Ameen20226;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            con.Open();
            load_Loca();
        }
        void load_Loca()
        {
            string cmd1 = ("select LocationName as 'ชื่อสาขา',Addresss as'ที่อยู่' ,Phone as 'เบอร์โทรศัพท์' from Locations");
            SqlCommand cm1 = new SqlCommand(cmd1, con);
            SqlDataReader dr2 = cm1.ExecuteReader();
            GridView1.DataSource = dr2;
            GridView1.DataBind();
            dr2.Close();
        }

        protected void AddType_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Locations (LocationName,Addresss,Phone) values('" + LoName.Text + "','" + Add.Text + "','" + Phone.Text + "') ", con);
            string qul = ("select * from Locations where LocationName='" + LoName.Text + "'");
            SqlCommand ccd = new SqlCommand(qul, con);
            SqlDataReader sdr = ccd.ExecuteReader();
            try
            {
                if (sdr.HasRows)
                {
                    sdr.Read();
                    LoName.Text = sdr["LocationName"].ToString();
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "ไม่สามารถเพิ่ม" + " " + LoName.Text + " " + "ได้ เนื่องจากมีอยู่แล้ว');", true);

                }

                else

                {
                    sdr.Close();
                    cmd.ExecuteNonQuery();
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('เพิ่มสำเร็จ');", true);
                    load_Loca();


                }
            }
            catch (Exception)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('เกิดข้อผิดพลาด');", true);
                con.Close();
            }
        }

        protected void DelType_Click(object sender, EventArgs e)
        {
            string qul = ("select * from Locations where LocationName='" + LoName.Text + "'");
            SqlCommand ccd = new SqlCommand(qul, con);
            SqlDataReader sdr = ccd.ExecuteReader();
            if (sdr.HasRows)
            {



                sdr.Close();
                cmd.CommandText = ("delete from Locations where LocationName='" + LoName.Text + "'");
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('ลบสำเร็จ');", true);
                load_Loca();
            }
            else
            {
                if (LoName.Text == "")
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('กรุณากรอกข้อมูลให้ครบ');", true);
                }

            }
        }

        protected void EditType_Click(object sender, EventArgs e)
        {
            if (LoName.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('กรุณากรอกข้อมูลให้ครบ');", true);

            }

            else
            {
                cmd.CommandText = ("update Locations set Addresss='" + Add.Text + "',Phone='" + Phone.Text + "' where LocationName = '" + LoName.Text + "'");
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('แก้ไขข้อมูลสำเร็จ');", true);
                Add.Text = ""; Phone.Text = "";
                load_Loca();
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

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}