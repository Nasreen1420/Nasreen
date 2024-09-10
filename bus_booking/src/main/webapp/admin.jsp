<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
 <style>
        /* CSS for styling the navbar */
        .navbar {
            background-color: #333;
            overflow: hidden;
        }

        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }

        .navbar a.active {
            background-color: #4CAF50;
            color: white;
        }
    </style>
</head>
<body>
	<div class="navbar">
        <a href="home.jsp" class="active">Home</a>
        <a href="bus.jsp">Bus</a>
       	<a href="/user">User</a>
        <a href="book.jsp">Booking</a>
        <a href="payment.jsp">Payment</a>
        <a href="/profile">Profile</a>
        <a href="/logout">Logout</a>
    </div>
</body>
</html>