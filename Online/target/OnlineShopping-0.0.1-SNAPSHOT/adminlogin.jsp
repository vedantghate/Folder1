<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
</head>
<body>
<center>
<h1>Admin Login Form</h1>
<form action="adminlogin" method="post" >
			<table style="with: 50%">
				
				<tr>
					<td>UserName</td>
					<td><input type="text" name="username" required/></td>
				</tr>
					<tr>
					<td>Password</td>
					<td><input type="password" name="password" required/></td>
				</tr>
				<tr>
					<td></td>
					<td>
					<input type="submit" value="Submit" />
					</td>
					
					
				</tr>
			</table>
			</form>
</center>

</body>
</html>