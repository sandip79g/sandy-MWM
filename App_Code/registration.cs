using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


/// <summary>
/// Summary description for registration
/// </summary>
public class registration
{
    GlobalConnection gs = new GlobalConnection();

	public registration()
	{
		
	}

    public void signup(String name, String username, String password, String email, String contact, String age, String gender, String address)
    {
        
            string sql = "insert into customer (name, username, password, email, contact, age, gender, address) values (@name, @username, @password, @email, @contact, @age, @gender, @address)";
            SqlCommand cmd = new SqlCommand(sql, gs.cn);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@contact", contact);
            cmd.Parameters.AddWithValue("@age", age);
            cmd.Parameters.AddWithValue("@gender", gender);
            cmd.Parameters.AddWithValue("@address", address);
            cmd.ExecuteNonQuery();
       
    }
    public DataTable CheckUser(string username)
    {
        string sql = "Select * From customer Where username='" + username + "' ";
        SqlDataAdapter da = new SqlDataAdapter(sql, gs.cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "member");
        return ds.Tables[0];

    }

}