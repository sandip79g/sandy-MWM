using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class client_change_password : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label5.Text = Session["username"].ToString();
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
         try {

            client_password pc = new client_password();
            pc.change(Session["username"].ToString(),pwd.Text);
            Literal1.Text = "Your password is changed";
        }
        catch (Exception ex) {
            Literal1.Text = ex.Message;
        }
    }
    }
