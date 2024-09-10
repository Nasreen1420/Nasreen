<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book a Ticket</title>
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        h2 {
            color: #444;
            text-align: center;
            margin-bottom: 20px;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }

        input[type="text"], input[type="email"], input[type="number"], input[type="busnumber"] {
            width: 100%;
            padding: 8px;
            margin-top: 8px;
            margin-bottom: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        button[type="submit"]:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
	 <form action = "book" method = post>
	 Bus Name : <input type="busnumber" name = busnumber>
	 <br>
	 From Location : <input type="text" name = fromlocation>
	 <br>
	 To Location : <input type="text" name = tolocation>
	 <br>
	 First Name : <input type = "text" name = firstname>
	 <br>
	 Last Name : <input type = "text" name = lastname>
	 <br>
	 Email : <input type="email" name = email>
	 <br>
	 Phone Number : <input type="number" name = phonenumber>
	 <br>
	 Number Of Tickets : <input type = "number" name = nooftickets>
	 <br>
	 <button type = "submit">Pay and Book</button>
	 </form>
</body>
</html>