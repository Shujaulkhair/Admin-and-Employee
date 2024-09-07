package com.EMS;

public class EmployeeBean {

	private int id;
	private String ename, edesig;
	private double bsal, hra, da, total;
	public EmployeeBean() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getEdesig() {
		return edesig;
	}
	public void setEdesig(String edesig) {
		this.edesig = edesig;
	}
	public double getBsal() {
		return bsal;
	}
	public void setBsal(double bsal) {
		this.bsal = bsal;
	}
	public double getHra() {
		return hra;
	}
	public void setHra(double hra) {
		this.hra = hra;
	}
	public double getDa() {
		return da;
	}
	public void setDa(double da) {
		this.da = da;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}

}
