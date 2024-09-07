package com.EMS;

import java.sql.*;

public class DeleteEmployeeDAO {

	int k = 0;
	public int delete(EmployeeBean eb) {
		try {
			Connection con = DBConnection.getCon();
			PreparedStatement ps = con.prepareStatement("Delete from Employee65 where EID=?");
			ps.setInt(1, eb.getId());
			k = ps.executeUpdate();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return k;
	}
	
}
