using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QueryStringDemo
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            nameTextBox.Text = Request.QueryString[0];
            passTextBox3.Text = Request.QueryString["password"];
            ageTextBox4.Text = Request.QueryString["age"];
            
        }
    }
}