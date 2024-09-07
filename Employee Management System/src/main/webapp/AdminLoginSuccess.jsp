<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "com.EMS.AdminBean"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Admin Welcome Page</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #ff7e5f, #feb47b);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            color: #fff;
        }
        .welcome-container {
            text-align: center;
            background-color: rgba(0, 0, 0, 0.5);
            padding: 50px;
            border-radius: 15px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.3);
        }
        .welcome-container h1 {
            font-size: 42px;
            margin-bottom: 20px;
            color: #f1c40f;
        }
        .welcome-container p {
            font-size: 20px;
            margin-bottom: 40px;
            color: #ecf0f1;
        }
        .button-container {
            display: flex;
            justify-content: center;
            gap: 20px;
        }
        .btn {
            padding: 15px 25px;
            font-size: 18px;
            font-weight: bold;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.3s;
        }
        .btn-blue {
            background-color: #3498db;
        }
        .btn-blue:hover {
            background-color: #2980b9;
            transform: scale(1.05);
        }
        .btn-green {
            background-color: #2ecc71;
        }
        .btn-green:hover {
            background-color: #27ae60;
            transform: scale(1.05);
        }
        .btn-red {
            background-color: #e74c3c;
        }
        .btn-red:hover {
            background-color: #c0392b;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
<%
AdminBean ab = (AdminBean)session.getAttribute("abean");
String name = ab.getfName();
%>



<div class="welcome-container">
        <h1>Welcome, <%=name %></h1>
        <p>Please select an option to proceed:</p>
        <div class="button-container">
           <a href="Employee.html"> <button class="btn btn-blue">Add Employee</button> </a>
           <a href="view"> <button class="btn btn-green">View Employee</button> </a>
           <a href="logout"> <button class="btn btn-red">Logout</button> </a>
        </div>
    </div>
</body>
</html>