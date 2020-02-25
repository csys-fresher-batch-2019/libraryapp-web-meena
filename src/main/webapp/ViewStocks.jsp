<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import=" com.books.model.BookStockDetails"%>
<%@page import="java.util.List" %>
<%@page import="com.books.dao.impl.BookStockDetailsDAOImpl" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
table {
  width: 50%;
}

th {
  height: 25px;
}
th, td {
  padding: 15px;
  text-align: left;
}

tr:nth-child(even) {background-color: #f2f2f2;}

</style>
<body>
<table>
<tr><th>ISBN NUMBER</th>
<th>BOOK ID</th>
<th>ACTIVE</th>
</tr>

<%

BookStockDetailsDAOImpl k=new BookStockDetailsDAOImpl();
List<BookStockDetails> displayBooks = k.displayBookStockDetails();
					for (BookStockDetails bookStockDetails : displayBooks) {
						%>
						<tr><td><%=bookStockDetails.getIsbnNo() %></td>
<td><%=bookStockDetails.getBookId() %></td>
<td><%=bookStockDetails.getActive() %></td>
</tr>
				<% 	}%>
				</table>
</body>
</html>