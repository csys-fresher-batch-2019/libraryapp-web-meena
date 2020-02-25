<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import=" com.books.model.BookDetails"%>
<%@page import="java.util.List" %>
<%@page import="com.books.dao.impl.BookDetailsDAOImpl" %>
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
tr:nth-child(even) 
{
background-color: #f2f2f2;
}
</style>
<body>
<table>
<tr><th>ISBN NUMBER</th>
<th>BOOK NAME</th>
<th>AUTHOR NAME</th>
<th>PUBLISHER</th>
<th>VERSION NUMBER</th>
<th>CATEGORIES</th>
<th>LANGUAGES</th>
<th>TOTAL COPIES</th>
</tr>

<%
BookDetailsDAOImpl k=new BookDetailsDAOImpl();
k.updateTotalStock();
List<BookDetails> displayBooks = k.displayBooks();
					for (BookDetails bookDetails : displayBooks) {
						%>
						<tr><td><%=bookDetails.getIsbnNo() %></td>
<td><%=bookDetails.getBookName() %></td>
<td><%=bookDetails.getAuthorName() %></td>
<td><%=bookDetails.getPublisher() %></td>
<td><%=bookDetails.getVersion() %></td>
<td><%=bookDetails.getCategories() %></td>
<td><%=bookDetails.getLanguages() %></td>
<td><%=bookDetails.getTotalBook() %></td>
</tr>
				<% 	}%>
				</table>
</body>
</html>