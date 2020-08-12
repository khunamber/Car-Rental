using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace Car_Rental
{
    public partial class item : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        private SqlDataReader reader;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Server=tcp:carforrental.database.windows.net,1433;Initial Catalog=ProjectDB;Persist Security Info=False;User ID=Thanwa;Password=Ameen20226;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            con.Open();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtcarID.Text == "" && txtUser.Text == "" && txtLo.Text == "" && txtDateL.Text == "" && txtTimeL.Text == "" && txtDateR.Text == "" && txtTimeR.Text == "" && txtDay.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script>alert('กรุณกรอกข้อมูลให้ครบ')</script>");
            }
            SqlCommand cmd = new SqlCommand("INSERT INTO Rental values('" + txtcarID.Text + "','" + txtUser.Text + "','" + txtLo.Text + "','" + txtDateL.Text + "','" + txtTimeL.Text + "','" + txtDateR.Text + "','" + txtTimeR.Text + "','" + txtDay.Text + "')", con);
            cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('จองรถสำเร็จแล้ว !!');", true);
            cmd.Parameters.Clear();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Text = txtDateL.Text +"," +txtDateR.Text;
            List<string> txtDateLSplit = txtDateL.Text.Split('-').ToList();
            List<string> txtDateRSplit = txtDateR.Text.Split('-').ToList();
            int DateR = 0;
            DateR += int.Parse(txtDateRSplit[0]) * 365;
            DateR += int.Parse(txtDateRSplit[1]) * 12;
            DateR += int.Parse(txtDateRSplit[2]);
            int DateL = 0;
            DateL += int.Parse(txtDateLSplit[0]) * 365;
            DateL += int.Parse(txtDateLSplit[1]) * 12;
            DateL += int.Parse(txtDateLSplit[2]);
            SqlCommand cmd = new SqlCommand("EXEC('declare @c int;exec @c = calcost " + txtcarID.Text + "," + txtDay.Text + ";select @c')", con);
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                Label1.Text = reader[0].ToString();
            }
            reader.Close();
            con.Close();
        }
    }
}