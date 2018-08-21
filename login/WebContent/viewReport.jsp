<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.example.util.DBUtil"%>

<%session.getAttribute("username");%>

<%
//String userName = request.getParameter("username");
//String password = request.getParameter("password");
String utype = "";
Connection con = DBUtil.getMySqlConnection();
Statement st = con.createStatement();
ResultSet rs,rs1;

rs = st.executeQuery("select * from User where userId = '" + session.getAttribute("username") + "'");

while(rs.next()){
	utype = rs.getString("utype");
}
	if(utype.equals("admin")){
		
		%>
		
		<center>
<table border="1" width="60%" cellpadding="5" bgcolor="lightgrey">
  <tr>
    <th colspan="4">Project</th>
    <th colspan="4">Efforts</th>
    <th colspan="4">Expenses</th>
    <th colspan="4">Collection</th>
  </tr>
  
  <%
		
		rs1 = st.executeQuery("SELECT IFNULL(Project,'Total') Project, SUM(Efforts) as efforts, SUM(Expenses) as expenses, SUM(Collection) as collection FROM Master GROUP BY Project WITH ROLLUP");
		while(rs1.next()){
	%>

	<tr>
		<td colspan="4"><%=rs1.getString("Project") %></td>
		<td colspan="4"><%=rs1.getString("Efforts") %></td>
		<td colspan="4"><%=rs1.getString("Expenses") %></td>
		<td colspan="4"><%=rs1.getString("Collection") %></td>
	</tr>

<%
		}
}
	else if (utype.equals("HR")){
		
		%>
		
		<center>
<table border="1" width="60%" cellpadding="5" bgcolor="lightgrey">
  <tr>
    <th colspan="4">Project</th>
    <th colspan="4">Efforts</th>
  </tr>
  
  <%
		
		rs1 = st.executeQuery("SELECT IFNULL(Project,'Total') Project, SUM(Efforts) as efforts FROM Master GROUP BY Project WITH ROLLUP");
		while(rs1.next()){
	%>

	<tr>
		<td colspan="4"><%=rs1.getString("Project") %></td>
		<td colspan="4"><%=rs1.getString("Efforts") %></td>
	</tr>

<%
		}
}
	else if (utype.equals("PMO")){
		
		%>
		
		<center>
<table border="1" width="60%" cellpadding="5" bgcolor="lightgrey">
  <tr>
    <th colspan="4">Project</th>
    <th colspan="4">Collection</th>
  </tr>
  
  <%
		
		rs1 = st.executeQuery("SELECT IFNULL(Project,'Total') Project, SUM(Collection) as Collection FROM Master GROUP BY Project WITH ROLLUP");
		while(rs1.next()){
	%>

	<tr>
		<td colspan="4"><%=rs1.getString("Project") %></td>
		<td colspan="4"><%=rs1.getString("Collection") %></td>
	</tr>

<%
		}
}
	else if (utype.equals("Fin")){
		
		%>
		
		<center>
<table border="1" width="60%" cellpadding="5" bgcolor="lightgrey">
  <tr>
    <th colspan="4">Project</th>
    <th colspan="4">Expenses</th>
  </tr>
  
  <%
		
		rs1 = st.executeQuery("SELECT IFNULL(Project,'Total') Project, SUM(Expenses) as Expenses FROM Master GROUP BY Project WITH ROLLUP");
		while(rs1.next()){
	%>

	<tr>
		<td colspan="4"><%=rs1.getString("Project") %></td>
		<td colspan="4"><%=rs1.getString("Expenses") %></td>
	</tr>

<%
		}
}
	else
	{
		out.println("Incorrect user !");
	}
%>
