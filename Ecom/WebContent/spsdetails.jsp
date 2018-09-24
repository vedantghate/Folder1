
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.ResultSet" %>
<%@page import="com.example.util.DBUtil"%>

<%session.getAttribute("username");%>

<center>
<table border="1" width="60%" cellpadding="5" bgcolor="lightgrey">
  <tr>
    <th colspan="4">id</th>  
    <th colspan="4">First Name</th>
    <th colspan="4">Last Name</th>
    <th colspan="4">Email-id</th>
    <th colspan="4">D.O.B</th>
    <th colspan="4">Gender</th>
    <th colspan="4">Contact</th>
    <th colspan="4">City</th>    
  </tr>

 
<%	
	Connection con = DBUtil.getMySqlConnection();
	Statement st = con.createStatement();
	//ResultSet rs;
	
	ResultSet rs;
	rs = st.executeQuery("select id,FIRST_NAME,LAST_NAME,EMAIL,DATE_OF_BIRTH,GENDER,PHONE_NO,CITY from sps where TYPE='Salesperson'");
	

	
	while(rs.next()){
	
	//select PRODUCT,RATE,QUANTITY from prod where USER='ved25' and QUANTITY>0;
%>

  <tr>
    <td colspan="4"><%=rs.getString("id") %></td>
	<td colspan="4"><%=rs.getString("FIRST_NAME") %></td>
	<td colspan="4"><%=rs.getString("LAST_NAME") %></td>
	<td colspan="4"><%=rs.getString("EMAIL") %></td>
	<td colspan="4"><%=rs.getString("DATE_OF_BIRTH") %></td>
	<td colspan="4"><%=rs.getString("GENDER") %></td>
	<td colspan="4"><%=rs.getString("PHONE_NO") %></td>
	<td colspan="4"><%=rs.getString("CITY") %></td>
  </tr>
 
<% } %>
</table>

<br><br>
<form action=adminHome.jsp>
	<input type="submit" value="Home">
</form>
</center>
	

