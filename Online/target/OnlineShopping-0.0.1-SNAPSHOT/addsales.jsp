<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>add sales person</title>
</head>
<body>
<center>
	<h3>Add Sales Person</h3>
	<form action="addsales" method="post" >	
	<table>
		<tr>
			
			
		<td><input type="textbox" name="pname" required></td>
		<td><input type="textbox" name="area" required></td>
		<td><input type="submit" name="add" value="add"></td>
			
		</tr>
	</table>
	</form>	
</center>
</body>
</html>