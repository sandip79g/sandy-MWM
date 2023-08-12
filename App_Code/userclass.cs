using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for userclass
/// </summary>
public class userclass
{
    GlobalConnection gc = new GlobalConnection();
	public userclass()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public DataTable checkUser(string username, string password) { 
    
        string sql= "select * from customer where username= '"+ username +"' and password='"+ password+"'";
        SqlDataAdapter da = new SqlDataAdapter(sql, gc.cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "customer");
        return ds.Tables[0];
    }
}