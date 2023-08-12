using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class client_registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            registration rg = new registration();
            DataTable dt = rg.CheckUser(uname.Text);
            if (dt.Rows.Count > 0)
            {
                Literal1.Text = "Username is already used, choose again";
            }
            else
            {
                rg.signup(fullname.Text, uname.Text, pwd.Text, email.Text, contact.Text, age.Text, genderlist.Text, address.Text);
                Literal1.Text = "Registered";
            }
        }
        catch (Exception ex)
        {
            Literal1.Text = ex.Message;
        }
    }
}