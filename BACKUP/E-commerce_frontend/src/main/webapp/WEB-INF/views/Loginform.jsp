<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="/WEB-INF/CSS/CSS FOR LOGIN" rel="stylesheet" type="text/css">

 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 </head>
<body>


 
<div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
           <!--  <h1 class="text-center login-title"> LOGIN </h1> -->
            <center> <h3><span class="glyphicon glyphicon-lock"></span> Login</h3></center>
            <div class="account-wall">
            
            <center>
                <img class="img-circle" src="resource/images/img_avatar2.png"alt="Avatar" class="avatar"width="200" height="auto">
               </center>
                  <form class="form-Login">
              
                <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
                <input type="text" class="form-control" placeholder="Email" required autofocus>
               
                <label for="password"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
                <input type="password" class="form-control" placeholder="Password" required>
                
                <button type="submit" class="btn btn-lg btn-primary btn-block" >
               <span class="glyphicon glyphicon-off"></span> Login</button>
                 
                 
                  
              <label class="checkbox pull-left">
                    <input type="checkbox" value="remember-me">Remember me</label>
                
                
                <a href="#" class="pull-right need-help">Forget Password ? </a><span class="clearfix"></span>
                
                 </form> 
               
                
            </div>
            <a href="#" class="text-center new-account">Create an account </a>
           </div> 
        </div>
    </div>
</div>

</body>
</html>

<%@ include file="footer.jsp" %>
        






























<!--
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
                    </html> -->				
						
						
						
						
						
						












