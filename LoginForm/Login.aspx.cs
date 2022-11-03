using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace LoginForm
{

    public partial class Login : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["lodb"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from login where username = @user and password = @pass";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@user", idTextBox.Text);
            cmd.Parameters.AddWithValue("@pass", passTextBox2.Text);
            con.Open();
           SqlDataReader dr = cmd.ExecuteReader();
            if(dr.HasRows)
            {
                Session["user"] = idTextBox.Text;
                Response.Redirect("afterLogin.aspx");
                //Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script> alert('login success')</script>");
            }else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script> alert('login falied')</script>");
            }
            con.Close();
        }

    }
}