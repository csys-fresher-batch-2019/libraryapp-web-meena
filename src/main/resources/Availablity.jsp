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
						
<tr><td><%=cards.takenBooks %></td>
<td><%= cards.remaining %></td>


</tr>
<% }
	%>
	
				</table>
</body>
</html>