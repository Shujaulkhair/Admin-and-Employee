package com.EMS;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet("/Emplog")
public class EmployeeLoginServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		
		
		ViewOneEmployeeDAO voe = new ViewOneEmployeeDAO();
		EmployeeBean eb = voe.viewDetails(id);
		if(eb == null) {
			req.setAttribute("msg", "Invalid Id, Enter Correct Employee id");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}
		else {
			req.setAttribute("msg", eb);
			req.getRequestDispatcher("ViewOneEmployeeDetails.jsp").forward(req, res);
		}
	}
}
