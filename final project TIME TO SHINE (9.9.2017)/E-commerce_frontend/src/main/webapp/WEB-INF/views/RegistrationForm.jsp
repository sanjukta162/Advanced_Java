<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
   <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored ="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>



<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

		
		 <link href ="/webapp/resource/CSS REG/CSS.css" rel ="stylesheet" type="text/css">
		
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


	<!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		<link rel="stylesheet" href="style.css">
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
		
		<!-- Icons  -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
         <title>Registration Form</title>
           </head>

		
	<body>
	<jsp:include page="header.jsp"/>
	
	
		<div class="container">
			<div class="row main">
				<div class="main-login main-center">
				<center>
				<strong>
				<h3>Registration</h3>
				</strong>
				</center>
				 
 
 <form:form action="saveuser" method="post" commandName="user" modelAttribute="user">

        <table border="0">
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Your Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="Name" id="Name"  placeholder="Enter your Name"/>
									<form:errors path="Name" cssStyle="color:#FF0000;" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Your Email</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope-o" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="email" id="email"  placeholder="Enter your Email"/>
									<form:errors path="email" cssStyle="color:#FF0000;"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">Username</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="Username" id="Username"  placeholder="Enter your Username"/>
									<form:errors path="Username" cssStyle="color:#FF0000;" />
								</div>
							</div>
						</div>

						
						

						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="password" id="password"  placeholder="Enter your Password "/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="Address" class="cols-sm-2 control-label">Address</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-address-book" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="address" id="address"placeholder="Enter your Address"/>
									<form:errors path="Address" cssStyle="color:#FF0000;" />
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="State" class="cols-sm-2 control-label">State</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-address-book"  aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="state" id="state"placeholder="Enter your State"/>
									<form:errors path="State" cssStyle="color:#FF0000;" />
								</div>
							</div>
						</div>
						
						<%--<div class="form-group">
						<label for="Upload an image" class="cols-sm-2 control-label">Upload an image</label>
                        
                         <input type="file" name="image">
                          </div> --%>
						
						<div class="form-group">
							<button type= target="_blank" type="button" id="button" class="btn btn-primary btn-lg btn-block login-button">Register</button>
						</div>
						
						</table>
                        
						</form:form>
						</div>
						</div>
						</div>
						
						</body>
						</html>
						




