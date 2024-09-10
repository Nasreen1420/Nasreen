<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Bus</title>
<style>
        .form-container {
            margin: 50px;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            max-width: 500px;
            background-color: #f9f9f9;
        }

        .form-container label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }

        .form-container input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .form-container button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .form-container button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
	<div class="form-container">
        <h2>Add a New Bus</h2>
        <form action="add" method=post>
            <label for="busName">Bus Name:</label>
            <input type="text" id="busName" name=busName required>

            <label for="busNumber">Bus Number:</label>
            <input type="text" id="busNumber" name=busNumber required>

            <label for="fromLocation">From Location:</label>
            <input type="text" id="fromLocation" name=fromLocation required>

            <label for="toLocation">To Location:</label>
            <input type="text" id="toLocation" name=toLocation required>

            <label for="ticketPrice">Ticket Price:</label>
            <input type="number" id="ticketPrice" name=ticketPrice required>

            <label for="numberOfSeats">Number of Seats:</label>
            <input type="number" id="numberOfSeats" name=numberOfSeats required>

            <button type="submit">Add</button>
        </form>
    </div>
</body>
</html>