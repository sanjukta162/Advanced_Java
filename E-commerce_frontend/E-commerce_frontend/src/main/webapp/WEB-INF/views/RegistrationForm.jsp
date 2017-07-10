<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href ="rel/webapp/resource/css2/css.css" rel ="stylesheet" type="text/css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

   <div class="container">
   <center><h1 class="well">Registration Form</h1></center> 
	<div class="col-lg-12 well">
	<div class="row">
				<center>  <form action="">				
				       <div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
							</div>
							</div>
							</div>
							
						<table style="width:100%">
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Your Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="name" id="name" placeholder="Enter your Name"/><br/><br/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Your Email</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="email" id="email"  placeholder="Enter your Email"/>
								</div>
							</div>
						</div>
						
						</table>
						
						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label"> Your Username</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="username" id="username"placeholder="Enter your Username"/><br/><br/>
								</div>
							</div>
						</div>
						
						
						<div class="form-group">
							<label for="Password" class="cols-sm-2 control-label">Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="password" id="password" placeholder="Enter your Password"/><br/><br/>
								</div>
							</div>
						</div>
						
						
						
						
						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">Confirm Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="confirm" id="confirm"  placeholder="Confirm your Password"/>
								</div>
							</div>
						</div>
						
						
						
						<div class="form-group">
							<label for="Address" class="cols-sm-2 control-label">Address</label>
							<div class="cols-sm-10">
								<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="address" id="address"placeholder="Enter your Address"/><br/><br/>
									
								</div>
							</div>
						</div>
						
						
						<div class="form-group">
							<label for="State" class="cols-sm-2 control-label">State</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="state" id="state"placeholder="Enter your State"/><br/><br/>
								</div>
							</div>
						</div>
						
						
						
						<div class="form-group ">
							<button type= target="_blank" type="button" id="button" class="btn btn-primary btn-lg btn-block login-button">Register</button>
						</div>
					
</body>
</html>