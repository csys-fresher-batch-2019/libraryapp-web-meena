<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import=" com.books.model.User"%>
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

<%
HttpSession sess=request.getSession(false);
Integer userId=(Integer)sess.getAttribute("UserId");
UserDAOImpl k=new UserDAOImpl();
String errorMessage  = request.getParameter("errorMessage");
if (errorMessage != null){

}
List<User> user= k.viewHistory(userId);
if(user.isEmpty())
{

	out.println("<font color='red'>No Records Found</font>");		
}
else
{
%>	
<tr><th>BOOK ID</th>
<th>ISSUED DATE</th>
<th>DUE DATE</th>
<th>RETURNED DATE</th>
<th>FINE AMOUNT</th>
<th>STATUS</th>
</tr>


				<%	for (User bookDetails :user ) {
						%>
						<tr><td><%=bookDetails.getBookId() %></td>
<td><%=bookDetails.getIssuedDate()%></td>
<td><%=bookDetails.getDueDate() %></td>
<td><%=bookDetails.getReturnedDate() %></td>
<td><%=bookDetails.getFineAmount() %></td>
<td><%=bookDetails.getStatus() %></td>
</tr>
<% }	}%>
</table>
</body>
</html>