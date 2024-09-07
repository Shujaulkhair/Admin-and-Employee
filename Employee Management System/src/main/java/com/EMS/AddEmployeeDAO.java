package com.EMS;

import java.sql.*;
public class AddEmployeeDAO {
	
	int k = 0;
	public int addEmployee(EmployeeBean eb) {
		try {
			Connection con = DBConnection.getCon();
			PreparedStatement ps = con.prepareStatement("insert into Employee65 values(?,?,?,?,?,?,?)");
			ps.setInt(1, eb.getId());
			ps.setString(2, eb.getEname());
			ps.setString(3, eb.getEdesig());
			ps.setDouble(4, eb.getBsal());
			ps.setDouble(5, eb.getHra());
			ps.setDouble(6, eb.getDa());
			ps.setDouble(7, eb.getTotal());
			k = ps.executeUpdate();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return k;
	}
	
}
