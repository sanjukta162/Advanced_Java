<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@include file="header.jsp" %>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<br>
<br>
 
<br><br>
<br><br>
<div class="container" id="product-section">


  <div class="row">
   <div class="col-md-5">
 <img  height="500px" width="400px" alt="${product.id}" src="<c:url value="/resource/images/${product.id}.jpg"></c:url>">

   </div>
   <div class="col-md-7">
   <div class="row">
   <div class="col-md-12">
   <h1>${product.name}</h1>
   </div>
   </div>
   
   
   <div class="row">
 <div class="col-md-12">
  <span class="label label-primary">Color</span>
 ${product.category.categoryName }
 <%--  <span class="monospaced">${product.color}</span> --%>
 </div>
</div>
  



<%-- <div class="row">
 <div class="col-md-12">
  <p class="description">
  ${product.desc}
  </p>
 </div>
</div> --%>


<div class="row">
 <div class="col-md-3">
  <span class="sr-only">Four out of Five Stars</span>
  <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
  <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
  <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
  <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
  <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>
  <span class="label label-success">61</span>
 </div>
 <div class="col-md-3">
  <span class="monospaced">Write a Review</span>
 </div>
</div>
   
<div class="row">
 <div class="col-md-12 bottom-rule">
  <h2 class="product-price">${product.price}</h2>
 </div>
</div>

<div class="row add-to-cart">
 <div class="col-md-3 product-qty">
  <span class="btn btn-default btn-lg btn-qty">
   <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
  </span>
 
 </div>

 <div class="col-md-9">
  <!-- <button class="btn btn-lg btn-brand btn-full-width">
   Add to Cart
  </button>
  -->   <a href="${session.getContextPath()}/Ecommerce/order/${product.id}"><!-- add to cart --></a></div>
</div><!-- end row -->

<div class="row">
 <div class="col-md-4 text-center">
  <span class="monospaced">In Stock</span>
 </div>
 <br/><br/><br/><br/>
 <div class="col-md-4 col-md-offset-1 text-center">
 <!-- <a class="monospaced" href="index" class="btn btn-info btn-lg">
  <span class="glyphicon glyphicon-shopping-cart"></span> Shopping Cart</a> -->
  
 <br/><br/><br/><br/>
 
<a href="index" class="btn btn-warning btn-lg">
<span class="glyphicon glyphicon-shopping-cart"></span> ADD TO CART</a> 
 </div>
 <br/><br/><br/><br/>
 <div class="col-md-4 col-md-offset-1 text-center">
 <a href="index" class="btn btn-danger btn-lg">
  <span class="glyphicon glyphicon-new-window"></span> BUY NOW</a>
 </div>
 
</div><!-- end row -->
<div class="row">
 <div class="col-md-12 bottom-rule top-10"></div>
</div><!-- end row -->

<br/><br/><br/><br/>
<div class="row">
 <div class="col-md-12 top-10">
  <p>To order by telephone,please call 1-800-555-1212</p>
 </div>
</div>


 
</div>
</div>
</div>
</div>
<%-- <img src="resources/images/${p.id}.jpg" height="150" width="150"/>
${p.id}--%>
</body>
</html>