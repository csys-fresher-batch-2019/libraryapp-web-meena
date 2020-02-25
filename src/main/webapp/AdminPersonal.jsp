<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Admin</title>
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
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Home<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="ViewBooks.jsp">View Books</a></li>
          <li><a href="NewEntry.jsp">New Entry</a></li>
          
          
          </li>
          
          
        </ul>
      </li>
       <ul class="nav navbar-nav">
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Stocks<span class="caret"></span></a>
        <ul class="dropdown-menu">
          
      <li><a href="ViewStocks.jsp">View Stocks</a></li>
      <li><a href="#">Individual Stocks</a></li>
      
       <li><a href="AddStock.jsp">Add stock</a></li>
        	<li><a href="DeleteStocks.jsp">Delete Stock</a></li>
        </li>
         
        </li>
   	
   </ul>
      </li>
      </ul>
      </li>
      <ul class="nav navbar-nav">
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Users<span class="caret"></span></a>
        <ul class="dropdown-menu">
          
      <li><a href="ViewUsers.jsp">View Users</a></li>
      <li><a href="ViewStatus.jsp">View Status</a></li>
      <li><a href="ReturnedStatus.jsp">Returned Status</a></li>
      <li><a href="IssuedBooks.jsp">Entry book status</a></li>
      <li><a href="DeleteUser.jsp">Delete Users</a></li>
      </li>
      
      </ul>
      </li>
      <ul class="nav navbar-nav">
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Settings<span class="caret"></span></a>
        <ul class="dropdown-menu">
          
      <li><a href="ChangeDueCount.jsp">Change Due Date</a></li>
      <li><a href="ChangeBookLimit.jsp">Change Book Limit</a></li>
      <li><a href="ChangePenalty.jsp">Penalty Settings</a></li>
      <li><a href="EnterLanguge.jsp">Insert Language</a></li>
      <li><a href="DeleteLanguage.jsp">Delete Language</a></li>
      <li><a href="EntryCategory.jsp">Insert Category</a></li>
      <li><a href="DeleteCategory.jsp">Delete Category</a></li>
      </li>
      
    </ul>
    <li><a href="Logout.jsp">Logout</a></li>
  </div>
</nav>
  
<div class="container">
  <style>
  
  body
  {
  background-image: url('assets/images/lib.jpg');
  background-attachment:fixed; 
  background-repeat: no-repeat;
  background-size:100% 100%;
  }
  </style>

</div>




</head>
<body>

</body>
</html>