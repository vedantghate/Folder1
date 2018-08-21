
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
	//String uname = request.getParameter("username").toString();
	String quantity1 = request.getParameter("quantity1");
	String quantity2 = request.getParameter("quantity2");
	String quantity3 = request.getParameter("quantity3");
	String quantity4 = request.getParameter("quantity4");
	String quantity5 = request.getParameter("quantity5");
	String quantity6 = request.getParameter("quantity6");
	String quantity7 = request.getParameter("quantity7");
	String quantity8 = request.getParameter("quantity8");
	
	int q1 = Integer.parseInt("quantity1");
	int q2 = Integer.parseInt("quantity2");
	int q3 = Integer.parseInt("quantity3");
	int q4 = Integer.parseInt("quantity4");
	int q5 = Integer.parseInt("quantity5");
	int q6 = Integer.parseInt("quantity6");
	int q7 = Integer.parseInt("quantity7");
	int q8 = Integer.parseInt("quantity8");
	
	Connection con = DBUtil.getMySqlConnection();
	Statement st = con.createStatement();
	int total;
	//ResultSet rs;
	int j = st.executeUpdate("insert into prod(USER,PRODUCT,RATE,QUANTITY) values ('"+session.getAttribute("username")+ "','"+ "Mobile" + "','"+ 80000+ "','"+ quantity1+ "') , ('"+session.getAttribute("username")+ "','"+ "Charger" + "','"+ 600+ "','"+ quantity2+ "') ,('"+session.getAttribute("username")+ "','"+ "Earphone" + "','"+ 750+ "','"+ quantity3+ "') , ('"+session.getAttribute("username")+ "','"+ "Headphone" + "','"+ 950+ "','"+ quantity4+ "') , ('"+session.getAttribute("username")+ "','"+ "Speaker" + "','"+ 9050+ "','"+ quantity5+ "') , ('"+session.getAttribute("username")+ "','"+ "Camera" + "','"+ 8000+ "','"+ quantity6+ "') , ('"+session.getAttribute("username")+ "','"+ "Cover case" + "','"+ 300+ "','"+ quantity7+ "') , ('"+session.getAttribute("username")+ "','"+ "Powerbank" + "','"+ 3000+ "','"+ quantity8+ "') ");

	int h = st.executeUpdate("insert into history(USER,PRODUCT,RATE,QUANTITY) values ('"+session.getAttribute("username")+ "','"+ "Mobile" + "','"+ 80000+ "','"+ quantity1+ "') , ('"+session.getAttribute("username")+ "','"+ "Charger" + "','"+ 600+ "','"+ quantity2+ "') ,('"+session.getAttribute("username")+ "','"+ "Earphone" + "','"+ 750+ "','"+ quantity3+ "') , ('"+session.getAttribute("username")+ "','"+ "Headphone" + "','"+ 950+ "','"+ quantity4+ "') , ('"+session.getAttribute("username")+ "','"+ "Speaker" + "','"+ 9050+ "','"+ quantity5+ "') , ('"+session.getAttribute("username")+ "','"+ "Camera" + "','"+ 8000+ "','"+ quantity6+ "') , ('"+session.getAttribute("username")+ "','"+ "Cover case" + "','"+ 300+ "','"+ quantity7+ "') , ('"+session.getAttribute("username")+ "','"+ "Powerbank" + "','"+ 3000+ "','"+ quantity8+ "') ");
	
	ResultSet rs;
	rs = st.executeQuery("select PRODUCT,RATE,QUANTITY from prod where USER='"+ session.getAttribute("username") + "' and QUANTITY>0 ");
	
	total=(80000*q1+600*q2+750*q3+950*q4+9050*q5+8000*q6+300*q7+300*q8);
	System.out.print(total);
	
	while(rs.next()){
	
	//select PRODUCT,RATE,QUANTITY from prod where USER='ved25' and QUANTITY>0;
%>

  <tr>
	<td colspan="4"><%=rs.getString("PRODUCT") %></td>
	<td colspan="4"><%=rs.getString("RATE") %></td>
	<td colspan="4"><%=rs.getString("QUANTITY") %></td>
  </tr>
 
<% } %>

	<tr>
		<td colspan="4">Total</td>
		<td colspan="4"><%=total %></td>
	</tr>
</table>

<br><br>
<form action=purchasesuccess.jsp>
	<input type="submit" value="Proceed to Checkout">
</form>
</center>
	

