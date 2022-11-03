using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace viewStateDemo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string a, b;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            //a = TextBox1.Text;
            //b = TextBox2.Text;

            ViewState["user"] = TextBox1.Text;
            ViewState["pass"] = TextBox2.Text;

            TextBox2.Text = string.Empty;
            TextBox1.Text = string.Empty;
            Response.Redirect("WebForm2.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = ViewState["user"].ToString();
            TextBox2.Text = ViewState["pass"].ToString();


        }
    }
}