<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form</title>
</head>

<body>
<center>
<h1>Login Form</h1>
<form action="user_login" method="post" >
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