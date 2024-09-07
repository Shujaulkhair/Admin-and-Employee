<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login Failed</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e74c3c;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            color: #fff;
        }
        .failed-container {
            text-align: center;
            background-color: rgba(0, 0, 0, 0.7);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.4);
            width: 90%;
            max-width: 400px;
        }
        .failed-container h1 {
            font-size: 36px;
            margin-bottom: 20px;
            color: #f1c40f;
        }
        .failed-container p {
            font-size: 20px;
            margin-bottom: 30px;
            color: #ecf0f1;
        }
        .retry-button {
            background-color: #c0392b;
            color: #fff;
            padding: 12px 20px;
            font-size: 18px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.3s;
        }
        .retry-button:hover {
            background-color: #a93226;
            transform: scale(1.05);
        }
        .retry-button:active {
            background-color: #922b21;
        }
    </style>
</head>
<body>
<%

%>
 <div class="failed-container">
        <h1>Login Failed</h1>
        <p>Sorry, your login attempt was unsuccessful.<br>Please check your credentials and try again.</p>
        <a href="AdminLogin.html"><button class="retry-button" >Try Again</button></a>
    </div>
</body>
</html>