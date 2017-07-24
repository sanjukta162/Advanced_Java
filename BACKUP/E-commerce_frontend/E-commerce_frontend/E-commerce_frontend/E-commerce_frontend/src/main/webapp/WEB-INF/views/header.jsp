<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored ="false" %>
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- CSS DESIGN FOR NAVBAR -->

  <link href ="/webapp/resource/css/css.css" rel ="stylesheet" type="text/css"> 

<!--<link href ="/webapp/resource/HEADER CSS/H CSS.css" rel ="stylesheet" type="text/css">-->

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<!-- CSS DESIGN FOR NAVBAR -->
 <link href ="/webapp/resource/css/css.css" rel ="stylesheet" type="text/css">


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 

</head>
<body>


<!-- Navigation Bar Coding -->

 <nav class="navbar navbar-inverse navbar- fixed-top">

<link href="http://cdn.phpoll.com/css/animate.css" rel="stylesheet">
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">



  <div class="container-fluid">
  <div class="navbar-header">
    <a class="nav-btn btn-dark btn-lg accordion-toggle pull-left" title="Follow Us" role="tab" id="social-collapse" data-toggle="collapse" data-parent="#accordion" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
   
    </a>
    
    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			</button>
			</div>
			
    
    
					<a id="menu-toggle" href="#" class="nav-btn btn-dark btn-lg toggle">
			
						 <i class="fa fa-bars" style="color:#fff;"></i>
						</a>
					
				<!-- NAVBAR BRAND NAME -->
				
				<div class ="container">
				<!--  <nav class = "navbar navbar-light" style = "background-color:#d9534f;">-->
				
				<!-- blue <nav class = "navbar navbar-light" style = "background-color:#73dfdc;">-->
				
				 <nav class = "navbar navbar-light" style = "background-color:#12e9ed;">
				
				
				<!-- BRAND NAME -->
  <!--   <strong><a class="navbar-brand" href="home"> Time To Shine</a></strong>-->
  
         <strong><a class="navbar-brand" href="#"> Time To Shine</a></strong>
      
    
              
     
    
     <div id="navbar" class="collapse navbar-collapse">
     
        <ul class="nav navbar-nav">
      <!--<ul class ="nav nav-pills">-->
      <c:url value="/home" var="url1"> </c:url>
      <li class="active"><a href="${url1}">Home <span  class= "glyphicon glyphicon-home"></span></a></li>

  
  
       <c:url value="/admin" var="url5"></c:url>
        <li> <a href="${url5}">Admin <span class = "glyphicon glyphicon-shopping-cart"></span></a></li>
        
        
        <li><a href="">Men Collection</a></li>
        <li><a href="">WomenCollection </a></li>
      
      <c:url value="/aboutus" var="url2"></c:url>
      <li><a href="${url2}">About Us </a></li> 
      
      <!-- http://localhost:8080/E-commerce_frontend/getprpductform -->
      <c:url value="/productform" var="url3"></c:url>
      <li><a href="${url3 }">Add Product <!-- <span class = "glyphicon glyphicon-shopping-cart"> </span>--> </a></li>
      
      <c:url value="all/product/getallproducts" var="url4"></c:url>
      <li><a href="${url4 }">Browse All Products</a></li>
    </ul> 
    
    <!-- <li class="dropdown">
    <a hrf="" class="dropdown-toogle" data-toogle="dropdown">
       Select by Category<b class="caret"></b></a>
       <ul class="dropdown-menu">
       <a href=""></a>
       </ul>
       </li> -->
    
   
     <form class="navbar-form navbar-right" > 
    <a href="RegistrationForm">Register<span class="glyphicon glyphicon-registration-mark" ></span></a>
    
   <a href="Loginform">Log In  
                    <span class="glyphicon glyphicon-user"></span> 
                    <span class="caret"></span>
    <a class="dropdown-toggle" href="#" data-toggle="dropdown" id="navLogin">
            <div class="dropdown-menu" style="padding:17px;">
              <form class="Loginform" id="formLogin"> 
              
              </form>
              </div>
              </a>
              </a>
              </form>
              
              </div>
              </nav>
              </div>
              </div>
              </nav>
               </nav> 
               
	

            <!-- <a href="Loginform" class="dropdown-toggle" data-toggle="dropdown"> <span class="caret"></span>
                    <span class="glyphicon glyphicon-user"></span> Log In</a>
               <ul class="dropdown-menu dropdown-lr animated slideInright" role="menu">                
                             <div class="col-lg-12"
                                <div class="text-center"><h3><b>Log In</b></h3></div> 
                        </ul>-->
                        
             
		
	
    <div class="container">
    <div class="row">
    <div class="col-xs-12 text-center"> 
        
        
    </div>
        
       <a href="/WEB-INF/css1/css.css" target="_blank" title="animate.css">animate.css</a> for the animations</div>
    </div>






<div class="container">
  
  <h3>
 <strong>WELCOME TO WATCH WORLD !!!!</strong>
 </h3>
</div>

<!-- CAROUSEL BAR CODING !! -->

 <!--  <div class="container">
   
  <div id="myCarousel" class="carousel slide" data-ride="carousel"> -->
    
    <!--   Indicators-->
    
   <!-- <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
</ol>-->

    <!-- Wrapper for slides -->
   <!--    <div class="carousel-inner" role ="listbox">
      
      <div class="item active">
      
  <img src="resource/images/img1.jpg" class="img-rounded" alt="Product1" max-width="100%" height="auto">
      </div>

      <div class="item">
   <img src="resource/images/img2.jpg" class="img-rounded" alt="Product2" max-width="100%" height="auto">
      </div>
    
      <div class="item">
   <img src="resource/images/img3.jpg"  class="img-rounded" alt="Product3" max-width="100%" height="auto">
      </div>
      <div class="item">
   <img src="resource/images/img4.jpg"  class="img-rounded" alt="Product4" max-width="100%" height="auto">
      </div> 
      
    </div>-->
    

    <!-- Left and right controls -->
    
    <!--  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>-->


 </body>
 
</html>