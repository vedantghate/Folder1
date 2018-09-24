<%
    if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
%>
You are not logged in.<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
<center>
<br><br>
Welcome <%=session.getAttribute("username")%> !<p>
<br><br><br><br>
<form action=orders.jsp>
	<input type="submit" value="View Orders">
</form>

<br><br>
<table>
<th>
<form action=spsdetails.jsp>
	<input type="submit" value="Salesperson details">
</form>
</th>
<th>
<form action=userdb.jsp>
	<input type="submit" value="User Db">
</form>
</th>
<th>
<form action=logout.jsp>
	<input type="submit" value="Logout">
</form>
</th>
</center>
<%
    }
%>