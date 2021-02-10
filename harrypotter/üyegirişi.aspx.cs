using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace harrypotter
{
    public partial class Siparişlerim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button2.Visible = false;
            Label1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                OleDbConnection baglan = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source =" + Server.MapPath(@"App_Data\Database7.accdb"));
                baglan.Open();
                OleDbCommand sorgu = new OleDbCommand("select * from kisi", baglan);
                OleDbDataReader oku = sorgu.ExecuteReader();
                while (oku.Read())
                {
                    if (TextBox1.Text == oku["kadi"].ToString() && TextBox2.Text == oku["sifre"].ToString())
                    {
                        Session["profil"] = oku["ad"].ToString() + " " + oku["soyad"].ToString();
                        Response.Redirect("Oturum.aspx");
                    }
                    else
                    {
                        Label1.Visible = true;
                        Button2.Visible = true;
                        Label1.Text = "kullanıcı adı veya şifre hatalı";
                    }
                }
            }
            catch (Exception ex)
            {
                Label1.Visible = true;
                Label1.Text = "Bağlantı hatası. Hata: " + ex.Message;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("üyeol.aspx");
        }
    }
}