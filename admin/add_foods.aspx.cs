using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_add_food : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("admin_login.aspx");
        }

    }
    protected void submitbtn_Click(object sender, EventArgs e)
    {
        try
        {

            insertfood i = new insertfood();
            DataTable dt = i.checkmed(food_name.Text);
            if (dt.Rows.Count > 0)
            {
                Literal1.Text = "Food name is already used, choose again";
            }
            else
            {

                i.insertfoods(food_name.Text, food_type.Text, food_rate.Text, food_image.FileName, food_desc.Text);
                food_image.SaveAs(Server.MapPath("~/Sandys_Pics/gfc") + food_image.FileName);
                Literal1.Text = "Record saved";
            }
        }


        catch (Exception ex)
        {
            Literal1.Text = ex.Message;

        }
    }
}
