using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class insertfood
{
    GlobalConnection gs = new GlobalConnection();
	public insertfood()
	{
       
	}

    public void insertfoods(string name, string type, string rate, string image, string description)
    {

        string sql = "insert into foods (name, type, rate, image, description) values (@name,@type,@rate,@image,@description)";
            SqlCommand cmd = new SqlCommand(sql, gs.cn);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@type", type);
            cmd.Parameters.AddWithValue("@rate", rate);
            cmd.Parameters.AddWithValue("@image", image);
            cmd.Parameters.AddWithValue("@description", description);
            cmd.ExecuteNonQuery();
        }
        
         public DataTable checkmed(string Name)
    {
        string sql = "Select * From foods Where Name='" + Name + "' ";
        SqlDataAdapter da = new SqlDataAdapter(sql, gs.cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "foods");
        return ds.Tables[0];

    }
}
