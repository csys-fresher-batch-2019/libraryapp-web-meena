<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import=" com.books.model.PenalityCalc"%>
<%@page import="java.util.List" %>
<%@page import="com.books.dao.impl.PenalityCalcDAOImpl" %>
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
<tr><th>ITEM ID</th>
<th>BOOK ID</th>
<th>USER ID</th>
<th>ISSUED DATE	</th>
<th>DUE DATE</th>
<th>RETURNED DATE</th>
<th>FINE AMOUNT</th>
<th>STATUS</th>
</tr>

<%
PenalityCalcDAOImpl k=new PenalityCalcDAOImpl();
List<PenalityCalc> display = k.displayFineDetails();
					for ( PenalityCalc penality : display) {
						%>
						<tr><td><%=penality.getItemId() %></td>
<td><%=penality.getBookId() %></td>
<td><%=penality.getUserId() %></td>
<td><%=penality.getIssuedDate() %></td>
<td><%=penality.getDueDate() %></td>
<td><%=penality.getReturnedDate() %></td>
<td><%=penality.getFineAmount() %></td>
<td><%=penality.getStatus() %></td>
</tr>
				<% 	}%>
				</table>
</body>
</html>