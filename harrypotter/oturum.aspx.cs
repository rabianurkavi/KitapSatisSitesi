using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace harrypotter
{
    public partial class oturum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["profil"] != null)
            {
                Label1.Text = "Hoşgeldiniz" + Session["profil"].ToString();
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            Session.Abandon();
            Response.Redirect("üyegirişi.aspx");
        }
    }
}