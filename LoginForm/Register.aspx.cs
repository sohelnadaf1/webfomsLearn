using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace LoginForm
{
    public partial class Register : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["lodb"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "insert into register values(@fname,@lname,@gender,@uname,@pass)";
            SqlCommand com = new SqlCommand(query, con);
            com.Parameters.AddWithValue("@fname", fnameTextBox1.Text);
            com.Parameters.AddWithValue("@lname", lnameTextBox2.Text);
            com.Parameters.AddWithValue("@gender", DropDownList1.SelectedItem.Text);
            com.Parameters.AddWithValue("@uname", unameTextBox3.Text);
            com.Parameters.AddWithValue("@pass", passTextBox4.Text);

            con.Open();
            int affRow = com.ExecuteNonQuery();
            if(affRow >0)
            {
                Response.Redirect("thank.aspx");
            }
            con.Close();
        }
    }
}