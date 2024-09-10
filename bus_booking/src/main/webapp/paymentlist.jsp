<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #ccc;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
	<h2>Payment List</h2>
    <table>
        <tr>
            <th>Card Number</th>
            <th>Name of Card</th>
            <th>Expire Date</th>
            <th>Price</th>
        </tr>
        <c:forEach var="payment" items="${payments}">
            <tr>
                <td>${payment.cardNumber}</td>
                <td>${payment.nameOnCard}</td>
                <td>${payment.expireDate}</td>
                <td>${payment.totalPrice}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>