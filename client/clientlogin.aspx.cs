using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class client_clientlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        try
        {
            userclass uc = new userclass();
            DataTable dt = uc.checkUser(uname.Text, pwd.Text);
            if (dt.Rows.Count > 0)
            {
                Session["username"] = uname.Text;
                Session["address"] = dt.Rows[0]["address"].ToString();
                Session["contact"] = dt.Rows[0]["contact"].ToString();
                Response.Redirect("homepage.aspx");

            }
            else 
            {
                Literal1.Text = "Invalid  username or password";
            }


        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }
}
