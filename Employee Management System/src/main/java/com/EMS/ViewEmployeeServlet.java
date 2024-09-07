package com.EMS;

import java.io.*;
import java.util.ArrayList;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@SuppressWarnings("serial")
@WebServlet("/view")
public class ViewEmployeeServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	
		HttpSession hs = req.getSession(false);
		if(hs == null) {
			req.setAttribute("msg", "Session Expired!!!!");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}
		else {
			ViewEmployeeDAO ved = new ViewEmployeeDAO();
			ArrayList<EmployeeBean> eb = ved.viewEmployee();
			hs.setAttribute("alist", eb);
			req.getRequestDispatcher("ViewAllEmployee.jsp").forward(req, res);
		}
	}
}
