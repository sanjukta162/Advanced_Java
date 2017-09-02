<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
   <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored ="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Browse All Products</title>

<%--BOOTSTRAP CDN --%>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="header.jsp"/>
<center>
<h1><strong><p class="text-primary">WATCH'S COLLECTION </p></strong></h1>
</center>
<%-- BY THIS CODE IMAGE IS SHOWING BELOW THE CAROUSEL --%>

  <br/><br/><br/><br/>
<c:forEach var="prod" items="${listProduct}">
<td><%-- <c:if test="${prod.category.categoryName =='watch'}"> --%><a href="showproduct/${prod.id}">
<div class="col-md-4">
<img src = "<c:url value ='/resource/images/${prod.id}.jpg'/>" height="200" width="200"/></a><br>
<c:url var="action" value="/product1"></c:url>

<form:form action="${action}" modelAttribute="cart">
<td id="td1"><i>Product name is <br/><c:out value="${prod.name}" /><br/>
<td id="td1"><i>product price is RS. <c:out value="${prod.price}" /><br/><br/>

<!--  <a href="showproduct"input class="btn btn-primary" name="_eventId_submit" type="submit"value="Add To Cart">Add To Cart</a>
 -->
<!-- <input type="submit" class="btn btn-primary" value="Add To Cart" /> -->
</form:form></td>
</div>
</c:forEach>

</body>
</html>