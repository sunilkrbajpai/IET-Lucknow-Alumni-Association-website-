using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;
using System.Configuration;
/// <summary>
/// Summary description for DBmanager
/// </summary>
public class DBmanager
{
    OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
	public DBmanager()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public bool executemyinsertupdateordelete(string yourcommand) 
    {
        OleDbCommand cmd = new OleDbCommand(yourcommand,con);
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        int n = cmd.ExecuteNonQuery();
        con.Close();
        if(n>0)
            return true;
        else
            return false;
    }
    public DataTable executemyselect(string yourcommand)
    {
        OleDbDataAdapter da = new OleDbDataAdapter(yourcommand, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

}