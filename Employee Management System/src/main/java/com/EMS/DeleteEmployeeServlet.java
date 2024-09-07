package com.EMS;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@SuppressWarnings("serial")
@WebServlet("/delemp")
public class DeleteEmployeeServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		EmployeeBean eb = new EmployeeBean();
		eb.setId(id);
		DeleteEmployeeDAO emd = new DeleteEmployeeDAO();
		int k = emd.delete(eb);
		
		if(k > 0) {
			req.setAttribute("msg", "employee Deleted Successfully...");
			req.getRequestDispatcher("EmployeeDeletedSuccessfully.jsp").forward(req, res);
		}
		else {
			req.setAttribute("msg", "Employee Not Deleted...");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}
	}
}
