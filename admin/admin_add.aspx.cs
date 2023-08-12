using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class admin_admin_add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
           
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MDBConnectionString"].ConnectionString);
                con.Open();
                string checkuser = "select count(*) from admin where username='" + unametxt.Text + "' ";
                SqlCommand com = new SqlCommand(checkuser, con);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 0)
                {
                    string insertadmin = "insert into admin(username , password, email, contact) values(@uname, @pwd, @email, @contact)";
                    com = new SqlCommand(insertadmin, con);
                    com.Parameters.AddWithValue("@uname", unametxt.Text);
                    com.Parameters.AddWithValue("@pwd", pwdtxt.Text);
                    com.Parameters.AddWithValue("@email", emailtxt.Text);
                    com.Parameters.AddWithValue("@contact", contacttxt.Text);

                    com.ExecuteNonQuery();

                    Response.Write("A new admin was sucessfully added.");
                }
                else {
                    Literal1.Text="The username already exists";
                }
                con.Close();


           
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }

    }
}
