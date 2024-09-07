package com.EMS;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@SuppressWarnings("serial")
@WebServlet("/addemp")
public class AddEmployeeServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		EmployeeBean ab = new EmployeeBean();
		ab.setId(Integer.parseInt(req.getParameter("id")));
		ab.setEname(req.getParameter("ename"));
		ab.setEdesig(req.getParameter("edesig"));
		double bsal = Double.parseDouble(req.getParameter("bsal"));
		double hra = 0.91 * bsal;
		double da = 0.61 * bsal;
		double total = bsal + hra + da;
		
		ab.setBsal(bsal);
		ab.setHra(hra);
		ab.setDa(da);
		ab.setTotal(total);
		
		AddEmployeeDAO emd = new AddEmployeeDAO();
		int k = emd.addEmployee(ab);
		if(k > 0) {
			req.setAttribute("msg", "Employee Added successfully");
			RequestDispatcher rd = req.getRequestDispatcher("EmployeeAddedSuccessfully.jsp");
			rd.forward(req, res);;
		}
		else {
			req.setAttribute("msg", "Employee Not Addedd!!!");
			RequestDispatcher rd = req.getRequestDispatcher("EmployeeNotAdded.jsp");
			rd.forward(req, res);;
		}
		
	}
}
