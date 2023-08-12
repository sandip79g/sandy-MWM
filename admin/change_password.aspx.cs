using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_change_password : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null) {
            Response.Redirect("admin_login.aspx");
        }
        Label1.Text = Session["username"].ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try {

            password_change pc = new password_change();
            pc.change(Session["username"].ToString(),TextBox1.Text);
            Literal1.Text = "Your password is changed";
        }
        catch (Exception ex) {
            Literal1.Text = ex.Message;
        }
    }
}