using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class client_singlemedicine : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("clientlogin.aspx");
        }
        string val = Request.QueryString["id"];
        try
        {
            details dc = new details();
            DataTable dt = dc.displays(val);
            Image1.ImageUrl = "~/Sandys_Pics/gfc" + dt.Rows[0]["image"].ToString();
            Label1.Text = dt.Rows[0]["name"].ToString();
            Session["mname"] = Label1.Text;

            Label2.Text = dt.Rows[0]["name"].ToString();
            Label3.Text = dt.Rows[0]["type"].ToString();
            Label4.Text = dt.Rows[0]["rate"].ToString();
            Label6.Text = dt.Rows[0]["description"].ToString();
            Session["rate"] = Label3.Text;
      
            
        }
        catch (Exception ex)
        {
            Literal1.Text = ex.Message;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        cart_insert ct = new cart_insert();
        try
        {
            if (Session["username"] == null)
            {
                Response.Redirect("clientlogin.aspx");
            }
            else 
            {
                string user = Session["username"].ToString();
                string img = Image1.ImageUrl;
                decimal total = Convert.ToDecimal(Label4.Text) * Convert.ToDecimal(quantity.Text);
                ct.carts(user, img, Label2.Text, Label3.Text, Convert.ToInt32(Label4.Text),Convert.ToInt32(quantity.Text), total, Convert.ToBoolean(0));
                Literal1.Text = "Add to cart successful!";
            }
        }

        catch(Exception ex) 
        {
            Literal1.Text = ex.Message;
        }
    }
   
}
