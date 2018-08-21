
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.example.util.DBUtil"%>

<%session.getAttribute("username");%>
 
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
	
		
	
	
	//Connection con = DBUtil.getMySqlConnection();
	//Statement st = con.createStatement();
	//ResultSet rs;
	//int j = st.executeUpdate("insert into prod(USER,PRODUCT,RATE,QUANTITY) values ('"+session.getAttribute("username")+ "','"+ "Mobile" + "','"+ 80000+ "','"+ quantity1+ "') , ('"+session.getAttribute("username")+ "','"+ "Charger" + "','"+ 600+ "','"+ quantity2+ "') ,('"+session.getAttribute("username")+ "','"+ "Earphone" + "','"+ 750+ "','"+ quantity3+ "') , ('"+session.getAttribute("username")+ "','"+ "Headphone" + "','"+ 950+ "','"+ quantity4+ "') , ('"+session.getAttribute("username")+ "','"+ "Speaker" + "','"+ 9050+ "','"+ quantity5+ "') , ('"+session.getAttribute("username")+ "','"+ "Camera" + "','"+ 8000+ "','"+ quantity6+ "') , ('"+session.getAttribute("username")+ "','"+ "Cover case" + "','"+ 300+ "','"+ quantity7+ "') , ('"+session.getAttribute("username")+ "','"+ "Powerbank" + "','"+ 3000+ "','"+ quantity8+ "') ");

%>