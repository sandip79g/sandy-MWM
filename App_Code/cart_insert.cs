using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


/// <summary>
/// Summary description for cart_insert
/// </summary>
public class cart_insert
{
    GlobalConnection gs = new GlobalConnection();
    public cart_insert()
    {

    }

    public void carts(string username, string image, string name, string type, int rate, int quantity, decimal total, bool isPurchased)
    {
        string sql = "insert into cart (username, image, name, type, rate, quantity, total, IsPurchased) values (@username, @image, @name, @type, @rate, @quantity, @total, @isPurchased)";
        SqlCommand cmd = new SqlCommand(sql, gs.cn);
        cmd.Parameters.AddWithValue("@username", username);
        cmd.Parameters.AddWithValue("@image", image);
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@type", type);
        cmd.Parameters.AddWithValue("@rate", rate);
        cmd.Parameters.AddWithValue("@quantity", quantity);
        cmd.Parameters.AddWithValue("@total", total);
        cmd.Parameters.AddWithValue("@isPurchased", isPurchased);
        cmd.ExecuteNonQuery();
    }

    
}
