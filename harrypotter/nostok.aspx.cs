using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Drawing;

namespace harrypotter
{
    public partial class nostok : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string resimadi = null;
            resimadi = FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("eski/" + resimadi));
            int boyut = FileUpload1.PostedFile.ContentLength;
            Bitmap resim = new Bitmap(Server.MapPath("eski/" + resimadi));
            Label1.Text = "Başarıyla kaydedildi. Boyut: " + boyut.ToString();
            Image1.ImageUrl = "eski/" + resimadi;
            Label2.Text = resim.Width + "x" + resim.Height;
            Bitmap yresim = new Bitmap(resim, Convert.ToInt32(TextBox5.Text), Convert.ToInt32(TextBox6.Text));
            yresim.Save(Server.MapPath("yeni/" + resimadi));
            Image2.ImageUrl = "yeni/" + resimadi;
            resimadi = "yeni/" + resimadi;
            Label3.Text = yresim.Width + "x" + yresim.Height;

            OleDbConnection con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:/Users/acer/Desktop/harrypotter/harrypotter/harrypotter/App_Data/kutuphane.accdb;Persist Security Info=True");
            con.Open();
            OleDbCommand cmd = new OleDbCommand("insert into uye (adi,soyadi,bolum,dtarih,resim) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + Convert.ToDateTime(TextBox4.Text) + "','" + resimadi + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            con.Dispose();
        }
        public void datalistdoldur()
        {
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:/Users/acer/Desktop/harrypotter/harrypotter/harrypotter/App_Data/kutuphane.accdb;Persist Security Info=True");
            OleDbCommand cmd = new OleDbCommand("select * from uye", con);
            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            DataTable dt = new DataTable();
            con.Open();
            da.Fill(dt);
            con.Close();
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
        public void repeaterdoldur()
        {
            OleDbConnection con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:/Users/acer/Desktop/harrypotter/harrypotter/harrypotter/App_Data/kutuphane.accdb;Persist Security Info=True");
            OleDbCommand cmd = new OleDbCommand("select * from uye", con);
            con.Open();
            OleDbDataReader dr = cmd.ExecuteReader();
            if (dr != null)
            {
                Repeater1.DataSource = dr;
                Repeater1.DataBind();
            }
            dr.Close();
            con.Close();
            con.Dispose();
        }
    }
}

