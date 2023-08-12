using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for bookingclass
/// </summary>
public class bookingclass
{
    GlobalConnection gs = new GlobalConnection();
	public bookingclass()
	{
		
	}

    public void book(string name, string username, string rate, string quantity, string total)
     {

         string sql = "insert into sales (name, username, sales_location, mem_uname, mem_contact, rate, quantity) values (@med_name,@sales_date,@sales_location,@mem_uname,@mem_contact,@rate,@quantity)";
       SqlCommand cmd = new SqlCommand(sql, gs.cn);
       cmd.Parameters.AddWithValue("@name", name);
       cmd.Parameters.AddWithValue("@username", username);
       cmd.Parameters.AddWithValue("@rate", rate);
       cmd.Parameters.AddWithValue("@quantity", quantity);
       cmd.Parameters.AddWithValue("@total", total);
        cmd.ExecuteNonQuery();
    }
}