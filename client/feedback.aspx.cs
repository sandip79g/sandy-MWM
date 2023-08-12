using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class client_feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        try 
        {
            feedbacks fd=new feedbacks();
            fd.comment(Session["username"].ToString(), TextBox2.Text);
            Literal1.Text="Thank you for your comment";
        }

        catch(Exception ex)
        {
            Literal1.Text=ex.Message;
        }
    }
}