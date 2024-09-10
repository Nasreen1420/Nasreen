<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bus Management</title>
<style>
        .bus-options {
            margin: 20px;
            padding: 10px;
        }

        .bus-options a {
            margin: 10px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

        .bus-options a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
	<div class="bus-options">
        <a href="addbus.jsp">AddBus</a>
        <a href="buslist.jsp">BusList</a>
        
    </div>
</body>
</html>