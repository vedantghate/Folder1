<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shop</title>
</head>
<body>
<Center>Welcome

<table>
<tr>
<td>
<input type="Button" name="profile" value="View Profile" onclick="window.location.href='http://localhost:8080/Online_Shopping/profile'" >
</td>
<td>
<input type="Button" name="history" value="History" onclick="window.location.href='http://localhost:8080/Online_Shopping/history'">
</td>
<td>
<input type="Button" name="logout" value="logout" onclick="window.location.href='http://localhost:8080/Online_Shopping/logout'">
</td>
</tr>
	<form action="buy" method="post" >
<tr>
<%
try 
{
	Class.forName("org.postgresql.Driver");
	Connection con = DriverManager.getConnection("jdbc:postgresql://localhost/Online_DB", "postgres", "12345");
	PreparedStatement smt = con.prepareStatement("select item_name, quantity from inventory");
	ResultSet rs = smt.executeQuery();
	int count = rs.getRow();
	//for(int i=0;i<=count;i++)
	//{
		//out.println();
	while(rs.next())
	{
		%>
		
		<tr>
		<td><input type="textbox" value="<%=rs.getString("item_name")%>" name="itemname"  ></td>
		<td><input type="textbox" value="<%=rs.getInt("quantity")%>" name="quantity" ></td>
		<td><input type="submit" value="Buy" ></td>
		</form>
		</tr>
		

<%
	
	}
//	}
}catch(Exception ex)
{
	System.out.println(ex.getMessage());
}
%>
</tr>
</table>
</body>
</html>