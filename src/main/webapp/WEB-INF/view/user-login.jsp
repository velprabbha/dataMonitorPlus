<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home|Login</title>
<style type="text/css">
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
	margin: 0;
	padding: 0;
}

nav {
	background-color: #333;
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
}

li {
	float: left;
	color: #fff;
	margin-right: 30%; 
}

li a {
	display: flex;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover {
	background-color: #111;
}
.container {
	width: 300px;
	margin: 20vh auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

h2 {
	text-align: center;
	color: #333;
}
form {
	display: flex;
	flex-direction: column;
}

input[type="text"], input[type="password"] {
	margin: 10px 0;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

button {
	background-color: #4CAF50;
	color: #fff;
	border: none;
	border-radius: 4px;
	padding: 10px;
	cursor: pointer;
}

button:hover {
	background-color: #45a049;
}

a {
	text-decoration: none;
	color: blue;
	margin-top: 5px;
}
</style>
</head>
<body>
 <nav>
    <ul>
      <li><a href="admin" id="link">Go to Admin Account</a></li>
      <li><h3>DataMonitorPlus</h3></li>
    </ul>
  </nav>
	<div class="container">
		<form action="user-home" method="post">
			<h2>Login</h2>
			<input type="text" name="email" placeholder="Email"> 
			<input type="password" name="password" placeholder="Password">
			<button type="submit">Login</button>
			<a href="register">Signup for datamonitor?</a>
		</form>
	</div>
</body>
</html>