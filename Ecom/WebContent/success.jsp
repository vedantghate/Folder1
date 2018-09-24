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
<form action=product.jsp>
	<input type="submit" value="Go Shopping">
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