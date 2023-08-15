<%@page import="org.hibernate.sql.Template"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>User Dashboard</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f5f8fa;
}

.navbar {
	background-color: #1da1f2;
	color: #fff;
	height: 10vh;
	display: flex;
	align-items: center;
	padding: 0 20px;
}

.navbar-title {
	font-size: 24px;
	margin: 0;
}

.profile {
	display: flex;
	align-items: center;
	margin-left: auto;
	margin-right: 20px;
}

.profile-image {
	width: 40px;
	height: 40px;
	border-radius: 50%;
	background-color: #1da1f2;
	margin-right: 10px;
}

.profile-username {
	color: #fff;
	font-size: 16px;
}

.project-options {
	display: flex;
	align-items: center;
}

.project-option {
	padding: 10px;
	color: #fff;
	text-decoration: none;
	margin-right: 10px;
	border-radius: 5px;
	background-color: #1da1f2;
}

.project-option:hover {
	background-color: #0c8dd1;
}
</style>
</head>
<body>
	<div class="navbar">
		<h1 class="navbar-title">User Dashboard</h1>
		<a href="user-dtl"></a>
		<div class="profile">
			<div class="profile-image"></div>
			<span class="profile-username">Welcome </span>
		</div>
	</div>

	<div class="container">
	</div>
</body>
</html>