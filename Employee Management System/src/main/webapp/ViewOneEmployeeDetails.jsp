<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="com.EMS.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>Welcome Employee</title>
    <style>
        /* General Styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .welcome-container {
            background-color: #fff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 100%;
            max-width: 500px;
        }

        h2 {
            color: #4a90e2;
            margin-bottom: 15px;
        }

        p {
            font-size: 16px;
            color: #333;
            margin-bottom: 10px;
        }

        .employee-details {
            margin-bottom: 20px; /* Reduced margin */
            text-align: left; /* Align the details to the left */
            font-size: 18px; /* Keep the font size large for readability */
        }

        button {
            background-color: #4a90e2;
            color: white;
            padding: 10px 20px;
            border: none;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            padding: 8px 16px; /* Reduced padding */
        }

        button:hover {
            background-color: #357ab7;
        }
    </style>
</head>
<body>
<%
EmployeeBean eb = (EmployeeBean)request.getAttribute("msg");

%>
<div class="welcome-container">
        <h2>Welcome, <%= eb.getEname()%></h2>
        <div class="employee-details">
            
            <p><strong>Employee ID:</strong> <%= eb.getId() %></p>
            <p><strong>Employee Name:</strong> <%= eb.getEname() %></p>
            <p><strong>Department:</strong> <%= eb.getEdesig() %></p>
            <p><strong>Basic Salary:</strong> <%= eb.getBsal() %></p>
            <p><strong>HRA :</strong> <%= eb.getHra() %></p>
            <p><strong>DA :</strong> <%= eb.getDa() %></p>
            <p><strong>TOTAL :</strong> <%= eb.getTotal() %></p>
        </div>
        <a href="logout"><button>Logout</button></a>
    </div>


</body>
</html>