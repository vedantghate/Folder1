
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.ResultSet" %>
<%@page import="com.example.util.DBUtil"%>

<%session.getAttribute("username");%>

<center>
<table border="1" width="60%" cellpadding="5" bgcolor="lightgrey">
  <tr>
    <th colspan="4">id</th>  
    <th colspan="4">Product</th>
    <th colspan="4">Rate</th>
    <th colspan="4">Quantity</th>
    <th colspan="4">Status</th>    
  </tr>

 
<%	
	Connection con = DBUtil.getMySqlConnection();
	Statement st = con.createStatement();
	//ResultSet rs;
	
	ResultSet rs;
	rs = st.executeQuery("select id,PRODUCT,RATE,QUANTITY,STATUS from history where QUANTITY>0 ");
	

	
	while(rs.next()){
	
	//select PRODUCT,RATE,QUANTITY from prod where USER='ved25' and QUANTITY>0;
%>

  <tr>
    <td colspan="4"><%=rs.getString("id") %></td>
	<td colspan="4"><%=rs.getString("PRODUCT") %></td>
	<td colspan="4"><%=rs.getString("RATE") %></td>
	<td colspan="4"><%=rs.getString("QUANTITY") %></td>
	<td colspan="4"><%=rs.getString("STATUS") %></td>
  </tr>
 
<% } %>
</table>

<br><br>
<form action=orderstatus.jsp>
	<input type="submit" value="ChangeOrderStatus">
</form>
<br><br><br>
<form action=Home.jsp>
	<input type="submit" value="Home">
</form>
</center>
	

