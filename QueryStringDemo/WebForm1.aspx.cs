using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QueryStringDemo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Redirect("WebForm2.aspx?name=" + TextBox1.Text);
            //Response.Redirect($"WebForm2.aspx?name={TextBox1.Text}&password={TextBox2.Text}&age={TextBox3.Text}");
            //Server.UrlEncode used for removing & conflict
            Response.Redirect($"WebForm2.aspx?name={Server.UrlEncode(TextBox1.Text)}&password={Server.UrlEncode(TextBox2.Text)}&age={Server.UrlEncode(TextBox3.Text)}");

        }
    }
}