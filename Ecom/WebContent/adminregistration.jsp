<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.example.util.DBUtil"%>
<%
	String userName = request.getParameter("username");
	String password = request.getParameter("password");
	String firstName = request.getParameter("firstname");
	String lastName = request.getParameter("lastname");
	String email = request.getParameter("email");
	
	String dob = request.getParameter("dob");
	String gender = request.getParameter("gender");
	String address = request.getParameter("address");
	String phone = request.getParameter("phone");
	 
	String type = request.getParameter("type");
	
	String city = request.getParameter("city");
	
	Connection con = DBUtil.getMySqlConnection();
	Statement st = con.createStatement();
	//ResultSet rs;
	int i = st.executeUpdate("insert into sps(FIRST_NAME, LAST_NAME, EMAIL, USER_NAME, PASSWORD, DATE_OF_BIRTH, GENDER, ADDRESS, PHONE_NO, CITY, TYPE) values ('"
					+ firstName
					+ "','"
					+ lastName
					+ "','"
					+ email
					+ "','" 
					+ userName
					+ "','" 
					+ password
					+ "','" 
					+ dob
					+ "','" 
					+ gender
					+ "','" 
					+ address
					+ "','" 
					+ phone
					+ "','" 
					+ city					
					+ "','" 
					+ type
					+ "')");
	if (i > 0) {
		response.sendRedirect("welcome.jsp");
	} else {
		response.sendRedirect("adminLogin.jsp");
	}
%>