<%
    if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
%>
<center>
<br><br><br><br>
You are not logged in.<br><br>
<form action="index.jsp">
	<input type="submit" value="Login">
</form>
</center>
<%} else {
%>
<center>
<br><br>
Welcome <%=session.getAttribute("username")%> !<p>
<br><br><br><br>
<form action=viewReport.jsp>
	<input type="submit" value="View Reports">
</form>

<br><br>
<table>
<th>
<form action=purchasehistory.jsp>
	<input type="submit" value="Purchase History">
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