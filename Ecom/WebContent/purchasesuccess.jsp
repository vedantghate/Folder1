<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.ResultSet" %>
<%@page import="com.example.util.DBUtil"%>

<%session.getAttribute("username");%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Checkout</title>
</head>
<body>
<center>
Payment Successful
<br><br><br>

<form action=logout.jsp>
	<input type="submit" value="Logout">
</form>
<form action=product.jsp>
	<input type="submit" value="Shop Again">
</form>
<br><br>
<form action=success.jsp>
	<input type="submit" value="Home">
</form>
</center>
</body>
</html>

<%

Connection con = DBUtil.getMySqlConnection();
Statement st = con.createStatement();

int k = st.executeUpdate("delete from prod where USER='"+session.getAttribute("username")+ "' ");
int j = st.executeUpdate("delete from history where Quantity=0");
%>
