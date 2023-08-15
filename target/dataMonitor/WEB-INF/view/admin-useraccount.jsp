<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isErrorPage="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin|useraccount list</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	font-family: sans-serif;
}

.toggle {
	position: relative;
	display: inline-block;
	width: 50px;
	height: 26px;
}

.switch {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: #ccc;
	border-radius: 13px;
	cursor: pointer;
	transition: background-color 0.4s;
}

.switch::before {
	position: absolute;
	content: "";
	height: 20px;
	width: 20px;
	left: 3px;
	bottom: 3px;
	background-color: white;
	border-radius: 50%;
	transition: transform 0.4s;
}

input[type="checkbox"] {
	display: none;
}

input[type="checkbox"]:checked+.switch {
	background-color: #4CAF50;
}

input[type="checkbox"]:checked+.switch::before {
	transform: translateX(24px);
}

.center-table {
	margin-left: auto;
	margin-right: auto;
}
nav{
	height: 10vh;
	background: #000;
}
nav h3{
	color: #fff;
	text-align: center;
	justify-content: center;
	display: flex;
}
.center-table{}
</style>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

</head>
<body>
	<nav>
		<h3>List of user Register Account</h3>
	</nav>
	<table class="table center-table">
		<thead>
			<tr>
				<th scope="col">S.No</th>
				<th scope="col">FirstName</th>
				<th scope="col">LastName</th>
				<th scope="col">email</th>
				<th scope="col">password</th>
				<th scope="col">Enable/Disable</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="ls" items="${list}">
				<tr>
					<th scope="col">${ls.id}</th>
					<td>${ls.firstName}</td>
					<td>${ls.lastName}</td>
					<td>${ls.email}</td>
					<td>${ls.password}</td>
					<td>
						<div class="toggle">
							<input type="checkbox" id="toggle-switch"><label
								for="toggle-switch" class="switch"></label>
						</div>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>