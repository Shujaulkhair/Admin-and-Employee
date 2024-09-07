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
@WebServlet("/update")
public class UpdateEmployeeServlet extends HttpServlet{

	@SuppressWarnings({ "unchecked", "unlikely-arg-type" })
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		HttpSession hs = req.getSession(false);
		if(hs == null) {
			req.setAttribute("msg", "Session Expired");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}
		else {
			ArrayList<EmployeeBean> al = (ArrayList<EmployeeBean>)hs.getAttribute("alist");
			//String  = req.getParameter("eid");
			int eid = Integer.parseInt(req.getParameter("eid")); //Hidden
			System.out.println("Update Employee"); //Debug
			Iterator<EmployeeBean> it = al.iterator();
			while(it.hasNext()) {
				System.out.println();
				EmployeeBean eb = (EmployeeBean)it.next();
				if(eid == eb.getId()) {
					System.out.println("found the id"); //Debug
					String designation = req.getParameter("edig");
					double bsal = Double.parseDouble(req.getParameter("bsal"));
					double hra = 0.93 * bsal;
					double da = 0.61 * bsal;
					double total = bsal + hra + da;
					
					eb.setId(eid);
					eb.setEdesig(designation);
					eb.setBsal(bsal);
					eb.setHra(hra);
					eb.setDa(da);
					eb.setTotal(total);
					
					UpdateEmployeeDAO ue = new UpdateEmployeeDAO();
					int k = ue.update(eb);
					if(k > 0) {
						req.setAttribute("msg", "Update Success");
						req.getRequestDispatcher("EmployeeUpdatedSuccessfully.jsp").forward(req, res);
					}
					else {
						
					}
					
				}
			}
		}
	}
}
