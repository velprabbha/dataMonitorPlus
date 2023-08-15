<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isErrorPage="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Login</title>
<style type="text/css">
body {
  font-family: Arial, sans-serif;
  background-color: #f2f2f2;
  margin: 0;
  padding: 0;
}

.container {
  width: 300px;
  margin: 25vh auto;
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

input[type="text"],
input[type="password"] {
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
.navbar {
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: #000;
	height: 5vh;
}
#heading{
	color: #fff;
}
</style>
</head>
<body>
<div class="navbar">
	<h2 id="heading">DataMonitorPlus</h2>
</div>	
 	 <div class="container">
    <form action="admin-login" method="post">
      <h2>Admin Login</h2>
      <input type="text" name="Email" placeholder="Email">
      <input type="password" name="password" placeholder="password">
      <button type="submit">Login</button>
    </form>
  </div>
</body>
</html>