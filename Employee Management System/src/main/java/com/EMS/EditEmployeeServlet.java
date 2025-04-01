package com.EMS;
import java.io.IOException;
import java.util.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/edit")
public class EditEmployeeServlet extends HttpServlet{

	@SuppressWarnings("unchecked")
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession hs = req.getSession(false);
		if(hs == null) {
			
			req.setAttribute("msg", "session Expired");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
			
		}
		else {	
			ArrayList<EmployeeBean> al = (ArrayList<EmployeeBean>)hs.getAttribute("alist"); //doubt, check it first
			int eid = Integer.parseInt(req.getParameter("eid"));
			Iterator<EmployeeBean> it = al.iterator();
			while(it.hasNext()) {
				
				EmployeeBean eb = (EmployeeBean)it.next();
				if(eid==eb.getId()) {
					
					req.setAttribute("ebean", eb);
					req.getRequestDispatcher("EditEmployee.jsp").forward(req, res);
					break; //if it found then break the loop
				}
			}//end of while loop
		}
	}
}
