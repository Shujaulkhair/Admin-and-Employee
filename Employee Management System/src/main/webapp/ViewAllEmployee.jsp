<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.EMS.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Employee Details</title>
<style>
     body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 20px;
    }
    .container {
        max-width: 800px;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h1 {
        font-size: 24px;
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }
    .employee-list {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }
    .employee-list th, .employee-list td {
        padding: 12px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    .employee-list th {
        background-color: #2980b9;
        color: #fff;
    }
    .employee-list tr:hover {
        background-color: #f1f1f1;
    }
    .employee-list td {
        color: #555;
    }
    .no-employee {
        text-align: center;
        font-size: 18px;
        color: #e74c3c;
        margin: 20px 0;
    }
    .edit-button {
        display: inline-block;
        background-color: #3498db;
        color: #fff;
        padding: 10px 15px;
        text-align: center;
        text-decoration: none;
        border-radius: 5px;
        font-size: 16px;
        transition: background-color 0.3s ease;
    }
    .edit-button:hover {
        background-color: #2980b9;
    }
    .delete-button {
        display: inline-block;
        background-color: #e74c3c;
        color: #fff;
        padding: 10px 15px;
        text-align: center;
        text-decoration: none;
        border-radius: 5px;
        font-size: 16px;
        transition: background-color 0.3s ease;
    }
    .delete-button:hover {
        background-color: #c0392b;
    }
    .logout-button {
        display: inline-block;
        background-color: #000000;
        color: #fff;
        padding: 10px 15px;
        text-align: center;
        text-decoration: none;
        border-radius: 5px;
        font-size: 16px;
        transition: background-color 0.3s ease;
    }
    .logout-button:hover {
	  background-color: #c0392b;
	}
    
</style>
</head>
<body>
<%
AdminBean ab = (AdminBean)session.getAttribute("abean");
ArrayList<EmployeeBean> al = (ArrayList<EmployeeBean>)session.getAttribute("alist");
%>
<div class="container">
    <h1>Employee Details</h1>
    <p>Page Belongs to <strong><%= ab.getfName() %></strong></p>

    <%
    if(al.size() == 0) {
    %>
        <p class="no-employee">No Employee is Available</p>
    <%
    } else {
    %>
        <table class="employee-list">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Designation</th>
                <th>Basic Salary</th>
                <th>HRA</th>
                <th>DA</th>
                <th>Total</th>
                <th>Editing</th> <!-- Added Actions column -->
            </tr>
            <%
            Iterator<EmployeeBean> it = al.iterator();
            while(it.hasNext()) {
                EmployeeBean eb = it.next();
            %>
            <tr>
                <td><%= eb.getId() %></td>
                <td><%= eb.getEname() %></td>
                <td><%= eb.getEdesig() %></td>
                <td><%= eb.getBsal() %></td>
                <td><%= eb.getHra() %></td>
                <td><%= eb.getDa() %></td>
                <td><%= eb.getTotal() %></td>
                <td>
                    <!-- Edit button with employee ID as a parameter -->
                    <a href="edit?eid=<%= eb.getId() %>" class="edit-button">Edit</a>
                </td>
            </tr>
            <%
            }
            %>
        </table>
    <%
    }
    %>

    <a href="deleteEmployee.html" class="delete-button">Delete Employee</a>
    <a href="logout" class="logout-button">logout</a>
</div>
</body>
</html>