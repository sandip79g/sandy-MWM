using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


public class details
{
	public details()
	{
	}
    GlobalConnection gc = new GlobalConnection();

    public DataTable displays(string val) { 
    
    string sql= "select * from foods where Id = '"+val+"'";
    SqlDataAdapter da = new SqlDataAdapter(sql,gc.cn);
        DataSet ds= new DataSet();
    da.Fill(ds, "foods");
    return ds.Tables[0];
    }
}