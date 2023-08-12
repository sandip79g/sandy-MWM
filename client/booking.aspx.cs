using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class client_order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bookingclass bc = new bookingclass();
        Label2.Text = Session["mname"].ToString();
        Label3.Text = DateTime.Now.Date.ToString("MM/dd/yyyy");
        Label4.Text = Session["address"].ToString();
        Label5.Text = Session["username"].ToString();
        Label6.Text = Session["contact"].ToString();
        Label7.Text = Session["rate"].ToString();
      
           

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            
        }
        catch(Exception ex)
        {
            Literal1.Text = ex.Message;
        }
    }
}