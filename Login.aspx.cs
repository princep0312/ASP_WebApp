using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Dashboard : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        try
        {
            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM [user] WHERE [email] = @email AND [password] = @password", con);
            cmd.Parameters.AddWithValue("@email",TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@password",TextBox2.Text.Trim());
            con.Open();
            int s = (int)cmd.ExecuteScalar();
            if(s==1)
            {
                Session["email"]=TextBox1.Text;
                TextBox1.Text = String.Empty;
                TextBox2.Text = String.Empty;
                Literal1.Text = "Login Successfull";
                Response.Redirect("~/Dashboard.aspx");

            }
            else
            {
                TextBox1.Text = String.Empty;
                TextBox2.Text = String.Empty;
                Literal1.Text="Login Failed";
                
            }
            con.Close();

        }
        catch(SqlException ex)
        {
            Response.Write("<script>alert('" + ex.ToString() + "')</script>");
        }
    }
}