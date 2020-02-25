<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import=" com.books.model.UserDetails"%>
<%@page import="java.util.List" %>
<%@page import="com.books.dao.impl.UserDetailsDAOImpl" %>
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
<tr><th>USER ID</th>
<th>USERNAME</th>
<th>EMAIL</th>
<th>PHONE NUMBER</th>
<th>ADDRESS</th>
<th>GENDER</th>
</tr>

<%
UserDetailsDAOImpl k=new UserDetailsDAOImpl();
List<UserDetails> displayUsers = k.displayUserDetails();
					for (UserDetails UserDetails : displayUsers) {
						%>
						<tr><td><%=UserDetails.getUserId() %></td>
<td><%=UserDetails.getUserName() %></td>
<td><%=UserDetails.getEmail() %></td>
<td><%=UserDetails.getPhno() %></td>
<td><%=UserDetails.getAddress() %></td>
<td><%=UserDetails.getGender() %></td>
</tr>
				<% 	}%>
				</table>
</body>
</html>