package bs.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import bs.db.DBHelper;

public class DAO
{
	static String provider="jdbc:mysql://localhost:3306/centralized";
	static String uid="root";
	static String pwd="MyNewPass4!";	
	public static String addNewRecord(String q)
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			java.sql.Connection cn = DriverManager.getConnection(provider,uid,pwd);
			boolean st=DBHelper.executeUpdate(q, cn);
			return "yes";
		}
		catch(Exception e)
		{
			return "Error"+e;
		}
	}
		public static ResultSet showAllRecord(String q)
		{
			try
			{
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				java.sql.Connection cn = DriverManager.getConnection(provider,uid,pwd);
				Statement smt=cn.createStatement();
				ResultSet rs=DBHelper.executeQuery(q,cn);
				return rs;
			}
			catch(Exception e)
			{
				return null;
			}
		}
	
}
		
