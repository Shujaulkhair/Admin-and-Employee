package com.EMS;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@SuppressWarnings("serial")
@WebServlet("/adminlog")
public class AdminLoginServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String uN = req.getParameter("uname");
		String uP = req.getParameter("upword");
		
		AdminLoginDAO ald = new AdminLoginDAO();
		AdminBean ab = ald.login(uN, uP);
		if(ab == null) {
			req.setAttribute("msg", "Invalid Login Process <br>");
			req.getRequestDispatcher("AdminLoginFailed.jsp").forward(req, res);
		}
		else {
			HttpSession hs = req.getSession(); //New Session Created.
			hs.setAttribute("abean", ab);
			req.getRequestDispatcher("AdminLoginSuccess.jsp").forward(req, res);
		}
		
	}
}
