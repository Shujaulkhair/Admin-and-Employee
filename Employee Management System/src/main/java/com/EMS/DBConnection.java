package com.EMS;
import java.sql.*;;
public class DBConnection {

	private DBConnection() {
		
	}
	public static Connection con;
	static {
		try {
			Class.forName(DBinfo.driver);
			con = DriverManager.getConnection(DBinfo.dbURL, DBinfo.uName, DBinfo.uPword);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static Connection getCon() {
		return con;
	}
}
