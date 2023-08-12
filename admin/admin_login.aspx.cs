using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class admin_admin_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Response.Redirect("AdminHome.aspx");
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string user = unametxt.Text.Trim();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MDBConnectionString"].ConnectionString);
            con.Open();
            string checkuser = "select count(*) from admin where username='" + unametxt.Text + "' and password='"+pwdtxt.Text+"' ";
            SqlCommand com = new SqlCommand(checkuser, con);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Session["username"] = unametxt.Text;
                Response.Redirect("AdminHome.aspx");
   
            }
            else
            {
                Literal1.Text="Invalid password, Please try again";
            }
            con.Close();



        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }
}
