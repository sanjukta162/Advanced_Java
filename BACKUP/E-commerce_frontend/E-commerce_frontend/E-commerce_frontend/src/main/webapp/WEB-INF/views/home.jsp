<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">-->

<!-- jQuery library
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->

<!-- Latest compiled JavaScript 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->

<title>Insert title here</title>
</head>
<body>
 <jsp:include page="header.jsp"/>

  <!-- CAROUSEL BAR CODING !! -->

<div class="container">
   
       <div id="myCarousel" class="carousel slide" data-ride="carousel">
 
 <!--  <div class="carousel fade-carousel slide" data-ride="carousel" data-interval="4000" id="bs-carousel">-->
    
    <!-- Indicators -->
    
     <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
     </ol>

    <!-- Wrapper for slides -->
    
    <div class="carousel-inner" role ="listbox">
      <div class="item active">
       
     
  <img src="resource/images/img1.jpg" class="img-responsive" alt="Product1" max-width="100%" height="auto">
      </div>

      <div class="item">
   <img src="resource/images/img2.jpg" class="img-responsive" alt="Product2" max-width="100%" height="auto">
      </div>
    
      <div class="item">
   <img src="resource/images/img3.jpg"  class="img-responsive" alt="Product3" max-width="100%" height="auto">
      </div>
      <div class="item">
   <img src="resource/images/img4.jpg"  class="img-responsive" alt="Product4" max-width="100%" height="auto">
      </div> 
      
    </div>
    

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

</body>
</html>