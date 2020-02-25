<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Library</a>
    </div>
    <ul class="nav navbar-nav">
    
      <li><a href="ViewBooks.jsp">View Books</a></li>
      
      <li><a href="History.jsp">History</a></li>
      <li><a href="CurrentBooks.jsp">Current Books</a></li>
      <ul class="nav navbar-nav">
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Search Books<span class="caret"></span></a>
        <ul class="dropdown-menu">
     <li><a href="SearchBookName.jsp">Search By BookName</a></li>
     <li><a href="#">Search By Author Name</a></li>
      </ul>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Settings<span class="caret"></span></a>
        <ul class="dropdown-menu">
     <li><a href="ChangePassword.jsp">Change Password</a></li>
     <li><a href="ChangeAddress.jsp">Change Address</a></li>
     <li><a href="ChangePhoneNumber.jsp">Change Phone Number</a></li>
     </ul>
      <li><a href="DueBooks.jsp">Due Books</a></li>
      <li><a href="AvailablityCards.jsp">Available cards</a></li>
      <li><a href="Logout.jsp">Logout</a></li>
    </ul>

  </div>
</nav>
  
<div class="container">
  <style>
  body
  {
  background-image: url('assets/images/libb2.jpg');
  background-attachment:fixed; 
  background-repeat: no-repeat;
  background-size:100% 100%;
  }
</div>
</body>
</html>