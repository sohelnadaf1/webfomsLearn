﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SessionState
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user"] != null)
            {
                Response.Write("welcome" + Session["user"].ToString());
            }
            else
            {
                Response.Redirect("WebForm1.aspx");
            }

        }

        protected void Log_outButton1_Click(object sender, EventArgs e)
        {
            if(Session["user"]!=null)
            {
                Session["user"] = null;
                Response.Redirect("WebForm1.aspx");
            }
        }
    }
}