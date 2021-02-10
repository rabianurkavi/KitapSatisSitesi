using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace harrypotter
{
    public partial class tablo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
            
        

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
            GridView1.DataBind();

        }
            protected void Button2_Click(object sender, EventArgs e)
        {
           
            SqlDataSource1.Update();         
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Delete();
            GridView1.DataBind();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlDataSource2.Insert();
            GridView2.DataBind();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlDataSource2.Update();
            GridView2.DataBind();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            SqlDataSource2.Delete();
            GridView2.DataBind();
        }
        
    }
}