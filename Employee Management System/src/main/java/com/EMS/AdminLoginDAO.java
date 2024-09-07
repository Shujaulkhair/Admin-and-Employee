package com.EMS;

import java.sql.*;
public class AdminLoginDAO {

	public AdminBean ab = null;
	public AdminBean login(String uN, String uP) {
		try {
			Connection con = DBConnection.getCon();
			PreparedStatement ps = con.prepareStatement("select * from Admin65 where UNAME=? AND PWORD=?");
			ps.setString(1, uN);
			ps.setString(2, uP);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				ab = new AdminBean();
				ab.setfName(rs.getString(1));
				ab.setuPword(rs.getString(2));
				ab.setfName(rs.getString(3));
				ab.setlName(rs.getString(4));
				ab.setAddr(rs.getString(5));
				ab.setEmail(rs.getString(6));
				ab.setPhno(rs.getLong(7));
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return ab;
	}
	
}
