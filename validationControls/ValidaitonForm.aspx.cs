﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace validationControls
{
    public partial class ValidaitonForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Page.ClientScript
                .RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('your form hase been submitted')</script>");
        }

        
    }
}