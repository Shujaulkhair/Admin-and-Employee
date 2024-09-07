package com.EMS;
import java.sql.*;

public class ViewOneEmployeeDAO {
	EmployeeBean eb = null;
	int k = 0;
	public EmployeeBean viewDetails(int id) {
		try {
			Connection con = DBConnection.getCon();
			PreparedStatement ps = con.prepareStatement("select * from Employee65 where EID=?");
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				eb = new EmployeeBean();
				eb.setId(rs.getInt(1));
				eb.setEname(rs.getString(2));
				eb.setEdesig(rs.getString(3));
				eb.setBsal(rs.getDouble(4));
				eb.setHra(rs.getDouble(5));
				eb.setDa(rs.getDouble(6));
				eb.setTotal(rs.getDouble(7));
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return eb;
	}
}
