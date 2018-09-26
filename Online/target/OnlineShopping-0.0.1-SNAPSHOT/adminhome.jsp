<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
</head>
<body>
<center>
	Welcome admin
	<table>
		<tr>
		<td>
			<input type="button" name="addsales" value="Add Sales person" onclick="window.location.href='http://localhost:8080/Online_Shopping/addsales.jsp'">
			
		</td>
		<td>
			<input type="Button" name="logout" value="logout" onclick="window.location.href='http://localhost:8080/Online_Shopping/adminlogout'">
			
		</td>
		
		</tr>
	</table>
</center>
</body>
</html>