package com.EMS;
import java.sql.*;
public class UpdateEmployeeDAO {

	int k = 0;
	public int update(EmployeeBean eb) {
		
		try {
			Connection con = DBConnection.getCon();
			PreparedStatement ps = con.prepareStatement("Update Employee65 set EDESG=?, BSAL=?, HRA=?, DA=?, TOTSAL=? where EID=?");
			ps.setString(1, eb.getEdesig());
			ps.setDouble(2, eb.getBsal());
			ps.setDouble(3, eb.getHra());
			ps.setDouble(4, eb.getDa());
			ps.setDouble(5, eb.getTotal());
			ps.setInt(6, eb.getId());;
			
			k = ps.executeUpdate();
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
		
		return k;
	}
}
