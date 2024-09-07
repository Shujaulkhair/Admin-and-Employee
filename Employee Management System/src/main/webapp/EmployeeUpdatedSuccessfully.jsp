<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "com.EMS.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Successful</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .success-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            text-align: center;
        }

        h2 {
            color: #28a745;
            margin-bottom: 20px;
        }

        p {
            font-size: 16px;
            color: #555;
            margin-bottom: 20px;
        }

        button {
            background-color: #4a90e2;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #357ab7;
        }
    </style>
</head>
<body>
<%
//EmployeeBean eb = (EmployeeBean)request.getAttribute("msg");
String str = (String)request.getAttribute("msg");
//out.println(str);
%>


<div class="success-container">
        <h2>Update Successful!</h2>
        <p>Your changes have been saved successfully.</p>
        <a href="ViewAllEmployee.jsp">  <button>Back to Employee List</button> </a>
</div>
</body>
</html>