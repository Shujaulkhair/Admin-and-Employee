package com.EMS;

import java.sql.*;
import java.util.ArrayList;
public class ViewEmployeeDAO {

	//EmployeeBean eb = null;
	public ArrayList<EmployeeBean> al = new ArrayList<EmployeeBean>();
	public ArrayList<EmployeeBean> viewEmployee() {
		
		try {
			Connection con = DBConnection.getCon();
			PreparedStatement ps = con.prepareStatement("select * from Employee65");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				EmployeeBean eb = new EmployeeBean();
				eb.setId(rs.getInt(1));
				eb.setEname(rs.getString(2));
				eb.setEdesig(rs.getString(3));
				eb.setBsal(rs.getDouble(4));
				eb.setHra(rs.getDouble(5));
				eb.setDa(rs.getDouble(6));
				eb.setTotal(rs.getDouble(7));
				al.add(eb);
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return al;
	}
}
