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
    public partial class sepetim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LinkButton1.Visible = false;
            Label1.Visible = false;
            if (!Page.IsPostBack)
                Session["sure"] = DateTime.Now;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
                try
                {
                    OleDbConnection baglan = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source =" + Server.MapPath(@"App_Data\Database7.accdb"));
                    baglan.Open();
                    OleDbCommand sorgu = new OleDbCommand("insert into kisi(ad,soyad,yas,kadi,sifre,email) values(ad,soyad,yas,kadi,sifre,email)", baglan);
                    sorgu.Parameters.AddWithValue("ad", TextBox1.Text);
                    sorgu.Parameters.AddWithValue("soyad", TextBox2.Text);
                    sorgu.Parameters.AddWithValue("yas", TextBox3.Text);
                    sorgu.Parameters.AddWithValue("kadi", TextBox4.Text);
                    sorgu.Parameters.AddWithValue("sifre", TextBox5.Text);
                    sorgu.Parameters.AddWithValue("email", TextBox7.Text);
                    sorgu.ExecuteNonQuery();
                    baglan.Close();
                    Label1.Visible = true;
                    Label1.Text = "Kaydınız başarılı bir şekilde oluşturulmuştur. ";
                    LinkButton1.Visible = true;

                }
                catch (Exception ex)
                {
                    Label1.Visible = true;
                    Label1.Text = "Kayıt olunamadı. Hata:  " + ex.Message;

                }

            else
            {
                Label1.Visible = true;
                Label1.Text = "Kayıt Olunamadı.Sure Doldu";
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("üyegirişi.aspx");
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DateTime baslama = (DateTime)Session["sure"];
            if (baslama.AddSeconds(30) > DateTime.Now)
                args.IsValid = true;
            else
                args.IsValid = false;
        }
    }
}