<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "com.EMS.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Employee Details</title>
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

        .edit-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        .input-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            font-size: 14px;
            color: #555;
        }

        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin-top: 5px;
        }

        input[type="text"]:focus, input[type="number"]:focus {
            outline: none;
            border-color: #4a90e2;
        }

        button {
            width: 100%;
            background-color: #4a90e2;
            color: white;
            border: none;
            padding: 10px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #357ab7;
        }

        .message {
            text-align: center;
            margin-bottom: 15px;
            color: green;
        }

        .error {
            text-align: center;
            margin-bottom: 15px;
            color: red;
        }
    </style>
</head>
<body>
<%
AdminBean ab = (AdminBean)session.getAttribute("abean");
EmployeeBean eb = (EmployeeBean)request.getAttribute("ebean");
//out.println("Page Belongs to: " + eb.getEname());
%>

<div class="edit-container">
		
        <h2>Edit <%= eb.getEname() %>,  Details</h2>

        <form action="update" method="POST">
        <input type="hidden" name="eid" value=<%=eb.getId() %>>
            <div class="input-group">
                <label for="designation">Designation</label>
                <input type="text" id="designation" name="edig" value=<%=eb.getEdesig() %> required>
            </div>
            <div class="input-group">
                <label for="basicSalary">Basic Salary</label>
                <input type="number" id="basicSalary" name="bsal" value=<%=eb.getBsal() %> required>
            </div>

     
            <button type="submit">Update Employee Details</button>
        </form>
    </div>







</body>
</html>