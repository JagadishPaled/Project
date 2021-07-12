<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<style>
		span
				{
					    font-size: 25px;
					    display: flex;
					    justify-content: flex-end;
					    margin: 42px;
				}
			A 	{
					text-decoration: none;
					margin: 9px;
					padding: 7px;
				}
		h1
				{
					font-size: 50px;
					display:flex;
					justify-content:center;
					color:orange;
					animation: move 1s infinite ease-in-out;
				}
		table{
				font-size: 40px;
				border:2px solid blue;
				border-collapse:collapse;
				margin-left:auto;
				margin-right:auto;
				background-color: rgb(211, 189, 181);
		}
		tr,th,td{
					border:2px solid blue;
				}
		@keyframes move {
		    0% {
		      transform: scale(1) rotate(0deg);
		    }
		    50% {
		      transform: scale(1.1) rotate(0.1deg);
		    }
		  }
		</style>
		<meta charset="ISO-8859-1">
		<title>
		Brand Based Car Details
		</title>
	</head>
	<body>
		<span>
				<a href="./">AddCarDetails</a>
				<a href="/">BacktoHome</a>
		</span>
		<h1>Available Brand Details</h1>
		<table>
			<tr>
				<th>Car_Model</th>
				<th>Date</th>
				<th>Kilometer</th>
				<th>Car_Brand</th>
				<th>Status</th>
			</tr>
			<c:forEach items="${list}" var="eachItem">
			<tr>
				<td><c:out value="${eachItem.model}"></c:out></td>
				<td><c:out value="${eachItem.current_date}"></c:out></td>
				<td><c:out value="${eachItem.kilometers}"></c:out></td>
				<td><c:out value="${eachItem.brand}"></c:out></td>
				<td><c:out value="${eachItem.status}"></c:out></td>
			</tr>
			</c:forEach>
		</table>
	
	</body>
</html>