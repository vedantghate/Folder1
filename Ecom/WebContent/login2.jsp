<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.example.util.DBUtil"%>


<%
	String userName = request.getParameter("username");
	String password = request.getParameter("password");
	Connection con = DBUtil.getMySqlConnection();
	Statement st = con.createStatement();
	ResultSet rs;
	rs = st.executeQuery("select * from sps where USER_NAME='"
			+ userName + "' and PASSWORD='" + password + "'");
	if (rs.next()) {
		session.setAttribute("username", userName);
		String type = rs.getString("TYPE");
		System.out.println(type);
		if(type.equals("Admin")){
			response.sendRedirect("adminHome.jsp");
		}
		else if(type.equals("Salesperson")){
			response.sendRedirect("spsHome.jsp");
		}
		else{
			out.println("Invalid user");
		}
		
	} else {
		out.println("Invalid username or password. <a href='adminLogin.jsp'>Try again</a>");
	}
%>