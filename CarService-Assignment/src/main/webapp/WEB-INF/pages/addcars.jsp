<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Fill The Car Details</title>
		<style type="text/css">
			p
				{
					font-size: 35px;
					display: flex;
					justify-content: center;
					color:blue;
					animation: move 1s infinite ease-in-out;
				}
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
			input 
				{
				  cursor: pointer;
				  border-radius: 12px;
				  box-sizing: border-box;
				  display: inline-block;
				  border: 1px solid purple;
				  padding: 12px 2px;
				  margin: 8px 0;
				}
			.input1	
				{
					padding: 10px 5px;
					cursor: pointer;
					background-color: #b24cfd;
					border-radius: 10px;
				}
			select 
				{
					  cursor: pointer;
					  border-radius: 12px;
					  box-sizing: border-box;
					  display: inline-block;
					  border: 1px solid purple;
					  padding: 12px 2px;
					  margin: 8px 0;
				}
			label 
				{
		  			padding: 8px 8px;
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
	</head>
	<body>
		<span>
			<a href="../carDetails/all">ViewCarDetails</a>
			<a href="/">BacktoHome</a>
		</span>
		<p>
			Please Enter Car Details
		</p>
		<div>
			<form:form method="post" action="carDetails">
			
			<form:label path="model">
									<b>Car model</b>
			</form:label>
			<form:input path="model"/>
			
			<form:label path="current_date">
										<b>Date</b>
			</form:label>
			<form:input path="current_date"/>
			
			<form:label path="kilometer">	
								      <b>Kilometer</b>
			</form:label>
			<form:input path="kilometer"/>
			
			<form:label path="brand">
								<b>Select Brand</b>
			</form:label>
			<form:select path="brand" items="${groups}" />
			
			<form:label path="status">
								<b>Select Status</b>
			</form:label>
			<form:select path="status" items="${group}" />
			
			<input type="submit" class="input1" value="addCar"/>
			
			</form:form>
		</div>
	</body>
</html>