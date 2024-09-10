<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bus List</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 20px;
    }
    h1 {
        text-align: center;
        color: #333;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin: 20px 0;
    }
    table, th, td {
        border: 1px solid #ccc;
        padding: 10px;
        text-align: left;
    }
    th {
        background-color: #4CAF50;
        color: white;
    }
    tr:nth-child(even) {
        background-color: #f9f9f9;
    }
    a {
        text-decoration: none;
        color: #4CAF50;
    }
    a:hover {
        color: #45a049;
    }
    button {
        background-color: #4CAF50;
        color: white;
        border: none;
        padding: 8px 16px;
        border-radius: 5px;
        cursor: pointer;
    }
    button:hover {
        background-color: #45a049;
    }
    input[type="text"] {
        padding: 5px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 14px;
    }
</style>
</head>
<body>
	<body>
    <h1>Bus List</h1>

    <!-- Search Form -->
    <form action="search" method="get">
        <label for="fromLocation">From Location:</label>
        <input type="text" id="fromLocation" name="fromLocation" placeholder="Enter From Location">

        <label for="toLocation">To Location:</label>
        <input type="text" id="toLocation" name="toLocation" placeholder="Enter To Location">

        <button type="submit">Search</button>
        <button type="reset">Reset</button>
    </form>

    <br>

    <table>
        <tr>
            <th>Bus ID</th>
            <th>Bus Name</th>
            <th>From Location</th>
            <th>To Location</th>
            <th>Price</th>
            <th>Available Seats</th>
            <th>Action</th>
        </tr>

        <!-- Assuming a list of buses is available as a request attribute "buses" -->
        <c:forEach var="bus" items="${buses}">
            <tr>
                <td>${bus.busId}</td>
                <td>${bus.busName}</td>
                <td>${bus.fromLocation}</td>
                <td>${bus.toLocation}</td>
                <td>${bus.ticketPrice}</td>
                <td>${bus.numberOfSeats}</td>
                <td>
                    <a href="<c:url value='/update/${bus.busId}'/>">Update</a> |
                    <a href="<c:url value='/book/${bus.busId}'/>">Book</a> |
                    <a href="<c:url value='/delete/${bus.busId}'/>">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>