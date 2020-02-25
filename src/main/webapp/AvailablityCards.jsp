<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import=" com.books.model.CalcCard"%>
<%@page import="java.util.List" %>
<%@page import="com.books.dao.impl.UserDAOImpl" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
table {
  width: 100%;
}

th {
  height: 50px;
}
th, td {
  padding: 15px;
  text-align: left;
}
tr:nth-child(even) {background-color: #f2f2f2;}
</style>
<body>
<table>
<tr><th>Taken Books</th>
<th>Remaining</th>

</tr>

<%
HttpSession sess=request.getSession(false);
Integer userId=(Integer)sess.getAttribute("UserId");
UserDAOImpl m=new UserDAOImpl();
List<CalcCard>card=m.remainingCard(userId);
for(CalcCard cards:card)
{		
						%>
						
<tr><td><%=cards.getTakenBooks() %></td>
<td><%= cards.getRemaining() %></td>


</tr>
<% }
	%>
	
				</table>
</body>
</html>