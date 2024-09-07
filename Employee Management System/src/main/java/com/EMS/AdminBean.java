package com.EMS;

import java.io.Serializable;

@SuppressWarnings("serial")
public class AdminBean implements Serializable{

	private String uName, uPword, fName, lName, addr, email;
	private long phno;
	
	public AdminBean() {}

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

	public String getuPword() {
		return uPword;
	}

	public void setuPword(String uPword) {
		this.uPword = uPword;
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public String getlName() {
		return lName;
	}

	public void setlName(String lName) {
		this.lName = lName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public long getPhno() {
		return phno;
	}

	public void setPhno(long phno) {
		this.phno = phno;
	}
}
