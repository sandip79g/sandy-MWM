using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;



/// <summary>
/// Summary description for client_password
/// </summary>
public class client_password
{
	public client_password()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    GlobalConnection gc = new GlobalConnection();
    public void change(string username, string password)
    {
        string sql = "update  customer set password=@password where username = @username";
        SqlCommand cmd = new SqlCommand(sql, gc.cn);

        cmd.Parameters.AddWithValue("@username", username);
        cmd.Parameters.AddWithValue("@password", password);
        cmd.ExecuteNonQuery();
    }
}