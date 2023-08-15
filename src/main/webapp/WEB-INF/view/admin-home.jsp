<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin home</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

nav {
	background-color: #333;
}

nav ul {
	list-style-type: none;
	display: flex;
	justify-content: center;
	padding: 10px;
}

nav ul li {
	margin-right: 20px;
}

nav ul li:last-child {
	margin-right: 0;
}

nav ul li a {
	text-decoration: none;
	color: #fff;
	font-weight: bold;
	padding: 5px 10px;
}

nav ul li a:hover {
	background-color: #555;
}

#profile {
	float: left;
	margin-left: 45%;
	color: #fff;
}
</style>
</head>
<body>
	<nav>
		<ul>
			<li><a href="user-list">User
					Detail list</a></li>
			<li><a href="notify">Notification</a></li>
			<li id="profile">Admin Dashboard</li>
		</ul>
	</nav>
</body>
</html>