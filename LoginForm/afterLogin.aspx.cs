using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginForm
{
    public partial class afterLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user"] !=null)
            {
               string res = "welcome " + Session["user"].ToString();
                Response.Write(res);
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void logoutButton1_Click(object sender, EventArgs e)
        {
            if(Session["user"] != null)
            {
                Session["user"] = null;
                Response.Redirect("Login.aspx");
            }
        }
    }
}