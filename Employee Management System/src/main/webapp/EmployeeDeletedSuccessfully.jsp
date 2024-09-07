<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Employee Deleted Successfully</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #fff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }
        h1 {
            font-size: 24px;
            color: #27ae60;
            margin-bottom: 20px;
        }
        p {
            font-size: 16px;
            color: #555;
            margin-bottom: 30px;
        }
        .button-container {
            display: flex;
            justify-content: center;
            gap: 10px;
        }
        .button-container a {
            background-color: #3498db;
            color: #fff;
            padding: 12px 20px;
            text-decoration: none;
            border-radius: 4px;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }
        .button-container a:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
<%
String msg = (String)request.getAttribute("msg");
%>

<div class="container">
        <h1>Employee Deleted Successfully</h1>
        <p>The employee record has been removed from the database.</p>
        <div class="button-container">
            <a href="view">View Employees</a>
            <a href="deleteEmployee.html">Delete Another</a>
        </div>
</div>
</body>
</html>