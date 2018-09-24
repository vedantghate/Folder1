<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.example.util.DBUtil"%>
<%
	String id = request.getParameter("id");
	String status = request.getParameter("status");
	
	Connection con = DBUtil.getMySqlConnection();
	Statement st = con.createStatement();
	//ResultSet rs;
	int i = st.executeUpdate("update history set STATUS='"
					+ status
					+ "' where id='"+ id + "'");
	if (i > 0) {
		%>  <center>
			Status changed successfully !
			<br><br>
			<table>
			<th>
			<form action=orders.jsp>
			<input type="submit" value="View Orders">
			</form>
			</th>
			<th>
			<form action=Home.jsp>
			<input type="submit" value="Home">
			</form>
			</th>
			</table>
			</center>	
			<%		
	} else {
		%> <center>Error changing status</center>
		<%
	}
%>