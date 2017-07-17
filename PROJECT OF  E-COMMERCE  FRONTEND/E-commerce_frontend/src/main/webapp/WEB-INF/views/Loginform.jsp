<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



  <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP Page</title>
 <link href="/WEB-INF/css1/css.css" rel="stylesheet" type="text/css">
 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<center><h1>Login Page</h1></center>
<form action="#">
<center>
 <div class="imgcontainer">
    <img src="resource/images/img_avatar2.png"class="img-circle" alt="Avatar" class="avatar"width="200" height="auto" ><br/><br/>
     </div></center>
  
 


							<label for="name" class="cols-sm-2 control-label">Username</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="name" id="name" placeholder="Enter your Username"/><br/><br/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="Password" class="cols-sm-2 control-label">Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="password" id="password" placeholder="Enter your Password"/><br/><br/>
								</div>
							</div>

                     <div class="form-group ">
							<button type= target="_blank" type="button" id="button" class="btn btn-primary btn-lg btn-block login-button">Login</button>
						</div>	
						<input type="checkbox" checked="checked"> Remember me
						<div class="form-group ">
						<button type= target="_blank" type="button" id="button" class="btn btn-primary btn-lg btn-block Cancel-button">Cancel</button>
						</div>					
						<div>
						<span class="psw">Forgot <a href="#">password?</a></span>
						</div>
						
					</div>
					</form>	
					</body>
<%@include file ="footer.jsp" %>
</html>
						
						
						
						
						
						
						
						











<!--  

<center><h1>Login Page</h1></center>
        <center>
        
        <div class="imgcontainer">
    <img src="resource/images/img_avatar2.png" alt="Avatar" class="avatar"width="200" height="auto" >
     </div>
            <h2>Signup Details</h2>
            <div class="container">
            <form action="LoginCheck.jsp" method="post">
            
            <div class="container">
            <label><b>Username</b></label>
             <input type="text" name="username">
             
             
            <label><b><br/>Password </b></label>
            <input type="password" name="password">
            
            
             
            <div class="container" style="background-color:#f1f1f1">
            <br/><button type="submit">Login</button>
            <br/><input type="checkbox" checked="checked">Remember me
            </div>
            
            
    <br/><button type="button" class="cancelbtn">Cancel</button>
  <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
            </form>
        </center>



-->


