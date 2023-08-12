using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Data;


public partial class client_clientmaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        panel();

    }

    private void panel()
    {
        if (Session["username"] == null)
        {
            Panel2.Visible = false;
            Panel1.Visible = true;
            Panel3.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;

        }
        else
        {
            Panel2.Visible = true;
            Panel1.Visible = false;
            Label2.Visible = true;
            Label3.Visible = true;
            Label3.Text = Session["username"].ToString();
            Label4.Visible = true;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["foods"] = TextBox1.Text;
        Response.Redirect("searching.aspx");
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("clientlogin.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("homepage.aspx");
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex.Equals(1))
        {
            Response.Redirect("Burgers.aspx");
        }
        else if (DropDownList1.SelectedIndex.Equals(2))
                {
            Response.Redirect("Pizzas.aspx");
        }
        else if (DropDownList1.SelectedIndex.Equals(3))
        {
            Response.Redirect("MoMo.aspx");
        }
        else if (DropDownList1.SelectedIndex.Equals(4))
        {
            Response.Redirect("Pastas.aspx");
        }
        else if (DropDownList1.SelectedIndex.Equals(5))
                { Response.Redirect("Drinks.aspx");
        }
        else if (DropDownList1.SelectedIndex.Equals(6))
        {
            Response.Redirect("fullmenu.aspx");

        }

    }

   

    }



