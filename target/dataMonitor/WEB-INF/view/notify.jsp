<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notification</title>
<style type="text/css">
table {
	width: 100%;
	border-collapse: separate;
}

th, td {
	padding: 8px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

.notification {
	background-color: #f2f2f2;
	padding: 4px 8px;
	border-radius: 4px;
}

.approve {
	background-color: #4CAF50;
	color: white;
	border: none;
	padding: 6px 12px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	border-radius: 4px;
	cursor: pointer;
}

.reject {
	background-color: #C70039;
	color: white;
	border: none;
	padding: 6px 12px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	border-radius: 4px;
	cursor: pointer;
}
</style>
</head>
<body>
	<table>
		<tr>
			<th>Notification</th>
			<th>Action</th>
		</tr>
		<tr>
			<td><p class="notification">Notification</p></td>
			<td>
			<button class="approve">Approve</button>
			<button class="reject">Rejected</button>
			</td>
		</tr>
	</table>

</body>
</html>