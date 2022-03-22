using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Register : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        //ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" 
        //    DeleteCommand="DELETE FROM [user] WHERE [id] = @id" 
        //    InsertCommand="INSERT INTO [user] ([username], [email], [password]) VALUES (@username, @email, @password)" 
        //    ProviderName="<%$ ConnectionStrings:DatabaseConnectionString1.ProviderName %>" 
        //    SelectCommand="SELECT [id], [username], [email], [password] FROM [user]" 
        //    UpdateCommand="UPDATE [user] SET [username] = @username, [email] = @email, [password] = @password WHERE [id] = @id">
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("INSERT INTO [user] ([username], [email], [password]) VALUES (@username, @email, @password)",con);
        cmd.Parameters.AddWithValue("@username",TextBox1.Text);
        cmd.Parameters.AddWithValue("@email",TextBox2.Text);
        cmd.Parameters.AddWithValue("@password",TextBox3.Text);
        con.Open();
        int s = (int)cmd.ExecuteNonQuery();
        if(s==1)
        {
            TextBox1.Text = String.Empty;
            TextBox2.Text = String.Empty;
            TextBox3.Text = String.Empty;
            Literal1.Text = "Register Succesfull";
        }
        else
        {
            TextBox1.Text = String.Empty;
            TextBox2.Text = String.Empty;
            TextBox3.Text = String.Empty;
            Literal1.Text = "Register Failed";
        }
        con.Close();
    }
}