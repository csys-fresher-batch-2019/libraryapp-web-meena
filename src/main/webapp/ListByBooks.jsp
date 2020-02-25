<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import=" com.books.model.BookDetails"%>
<%@page import="java.util.List" %>
<%@page import="com.books.dao.impl.UserDetailsDAOImpl" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
<tr><th>ISBN NUMBER</th>
<th>BOOK NAME</th>
<th>AUTHOR NAME</th>
<th>PUBLISHER</th>
<th>CATEGORY</th>
<th>LANGUAGE</th>
<th>VERSION</th>
</tr>

<%
List<BookDetails> bookDetails=(List<BookDetails>)request.getAttribute("bookName");

if(bookDetails!=null)
	
{
	for (BookDetails bookName : bookDetails) {


						
						%>
						
						<tr><td><%=bookName.getIsbnNo() %></td>
						<td><%= bookName.getBookName() %></td>
<td><%=bookName.getAuthorName() %></td>
<td><%=bookName.getPublisher() %></td>
<td><%=bookName.getCategories() %></td>
<td><%=bookName.getLanguages() %></td>
<td><%=bookName.getVersion() %></td>

</tr>
<% }
	}%>
	
				</table>
</body>
</html>