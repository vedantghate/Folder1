<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.ResultSet" %>
<%@page import="com.example.util.DBUtil"%>

<%session.getAttribute("username");%>

<center>
<table border="1" width="60%" cellpadding="5" bgcolor="lightgrey">
  <tr>
    <th colspan="4">Product</th>
    <th colspan="4">Rate</th>
    <th colspan="4">Quantity</th>
  </tr>

 
<%
	Connection con = DBUtil.getMySqlConnection();
	Statement st = con.createStatement();
		
	ResultSet rs;
	rs = st.executeQuery("select PRODUCT,RATE,QUANTITY from history where USER='"+ session.getAttribute("username") + "' and QUANTITY>0 ");
	

	
	while(rs.next()){
	
%>

  <tr>
	<td colspan="4"><%=rs.getString("PRODUCT") %></td>
	<td colspan="4"><%=rs.getString("RATE") %></td>
	<td colspan="4"><%=rs.getString("QUANTITY") %></td>
  </tr>
 
<% } %>
</table>

<br><br>
<form action=success.jsp>
	<input type="submit" value="Home">
</form>
</center>
	
