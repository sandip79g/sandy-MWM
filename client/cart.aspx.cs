using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.IO;
using System.Text;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.html;
using System.Net;

public partial class client_cart : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("clientlogin.aspx");
        }
        if (GridView2.Rows.Count < 1)
        {
            lblMsg.Text = "No purchased item found";
        }
    }

    protected void Index_Changed(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedItem.Value == "1")
        {
            div1.Visible = true;
            div2.Visible = false;
        }


        else if (RadioButtonList1.SelectedItem.Value == "2")
        {
            div1.Visible = false;
            div2.Visible = true;

        }
    }



    protected void save_Click(object sender, EventArgs e)
    {
        string status = string.Empty;
        if (RadioButtonList1.SelectedItem.Value == "1")
        {
            status = "Delivery";
        }

        else
        {
            status = "Card";
        }

        string username = Session["username"].ToString();
        GlobalConnection gs = new GlobalConnection();
        foreach (GridViewRow row in GridView2.Rows)
        {
            string sql = "insert into sales (name, username, rate, Quantity, total, status) values (@name, @username , @rate, @Quantity, @total,@status)";
            SqlCommand cmd = new SqlCommand(sql, gs.cn);
            cmd.Parameters.AddWithValue("@name", row.Cells[2].Text);
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@rate", row.Cells[5].Text);
            cmd.Parameters.AddWithValue("@Quantity", row.Cells[6].Text);
            cmd.Parameters.AddWithValue("@total", row.Cells[7].Text);
            cmd.Parameters.AddWithValue("@status", status);
            cmd.ExecuteNonQuery();
        }

        
        string sql1 = "Update cart set IsPurchased = 'True' where username = username";
        SqlCommand cmd1 = new SqlCommand(sql1, gs.cn);
        cmd1.Parameters.AddWithValue("@username", username);

        int j = cmd1.ExecuteNonQuery();
        if (j > 0)
        {
            string sql2 = "Select * from cart where username = username";
            SqlDataAdapter da = new SqlDataAdapter(sql2, gs.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "cart");
            GridView2.DataBind();
            save.Visible = false;
            div2.Visible = false;
        }

        string user = Session["username"].ToString();
        string ss = "delete from cart where username=user";
        SqlCommand cm = new SqlCommand(ss, gs.cn);
        cm.ExecuteNonQuery();

        Literal1.Text = "Thank you for shopping on The Generic Cafe!!";
        Billdownloader.Visible = true;
    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    public void Hide_Click(object sender, EventArgs e)
    {
        


    }


    

    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void billdownloaderClick(object sender, EventArgs e)
    {
        
        string username = Session["username"].ToString();
        GlobalConnection gs = new GlobalConnection();
        foreach (GridViewRow row in GridView3.Rows)
        {
            string sql = "select * from sales (name, username, rate, Quantity, total, status) values (@name, @username , @rate, @Quantity, @total,@status)";
            SqlCommand cmd = new SqlCommand(sql, gs.cn);
            cmd.Parameters.AddWithValue("@name", row.Cells[2].Text);
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@rate", row.Cells[5].Text);
            cmd.Parameters.AddWithValue("@Quantity", row.Cells[6].Text);
            cmd.Parameters.AddWithValue("@total", row.Cells[7].Text);
            cmd.Parameters.AddWithValue("@status", row.Cells[8].Text);
            cmd.ExecuteNonQuery();
        }

        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition",
         "attachment;filename=GridViewExport.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);
        GridView3.AllowPaging = false;
        GridView3.DataBind();
        GridView3.RenderControl(hw);
        StringReader sr = new StringReader(sw.ToString());
        Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
        HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        pdfDoc.Open();
        htmlparser.Parse(sr);
        pdfDoc.Close();
        Response.Write(pdfDoc);
        Response.End();
    }

    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Confirms that an HtmlForm control is rendered for the specified AS.net
           server control at run time. */

    }


}





 

   

