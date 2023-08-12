using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class feedbacks
{
     GlobalConnection gc = new GlobalConnection();
	public feedbacks()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    
	

    public void comment(string username, string comment) {

        string sql = "insert into feedback (username, comment) values (@username, @comment)";
       SqlCommand cmd = new SqlCommand(sql, gc.cn);
        cmd.Parameters.AddWithValue("@username", username);
        cmd.Parameters.AddWithValue("@comment", comment);
        cmd.ExecuteNonQuery();
    }
}

