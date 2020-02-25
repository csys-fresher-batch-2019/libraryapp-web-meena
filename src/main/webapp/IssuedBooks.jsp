<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!DOCTYPE html>
<html>
<head>
	<title>Issued statement</title>
   <!--Made with love by Mutiullah Samim -->
   
	<!--Bootsrap 4 CDN-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

	<!--Custom styles-->
	<link rel="stylesheet" type="text/css" href="styles.css">
</head>

<body>
<form action="Issued">
<div class="container">

	<div class="d-flex justify-content-center h-70">
		<div class="card">
			<div class="card-header">
				<h3>Enter Issued Details</h3>
				<div class="d-flex justify-content-end social_icon">
					
				</div>
			</div>
			<div class="card-body">
				
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"></span>
						</div>
						<input type="text" class="form-control" placeholder="Enter the bookId"name="bookId">
						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"></span>
						</div>
						<input type="text" class="form-control" placeholder="Enter the userId"name="userId">
						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"></span>
						</div>
						<input type="date" class="form-control" placeholder="Enter the Issued Date"name="issuedDate">
						
					</div>
					
					
					<div class="form-group"><center>
						<input type="submit" value="Submit" class="btn float-center login_btn" >
					</center>
					</div>
					<div class="card-footer">
				
				
			</div>
			
				<div class="d-flex justify-content-center">
					
				</div>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>