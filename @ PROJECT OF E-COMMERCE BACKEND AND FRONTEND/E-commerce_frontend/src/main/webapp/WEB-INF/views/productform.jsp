<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

 <%--CSS LINK  --%>
<link rel="stylesheet" type="text/css" href="/resource/CSS ADMIN/stylecss.css">
</head>
<%@ include file="AdminHome.jsp" %>
	<br><br><br><br><br><br><br><br><br><br><br><br>

<body>

<!-- Spring Form tag. -->
<!-- http://localhost:8080/E-commerce_frontend/saveproduct -->

<c:url value ="/saveproduct" var="urL"></c:url>
<form:form  action ="${url }"  modelAttribute ="product">
<div class="form-group">

<%-- <form:form action="/saveproduct" method ="post" modelAttribute="product"--%>
 
<%-- <div class ="form-group">
<form:hidden path="id" class="form-control"/>--%>
</div> 
<div class ="form-group">
Enter Product Name 
<form:input path="name" class="form-control"/>
<form:errors path ="name" cssStyle="color:red"/> 


</div>
<br>

<div class ="form-group">
Enter Price 
<form:input path="price" class="form-control"/>
<form:errors path ="price" cssStyle="color:red"/>
</div>
<br>

<div class ="form-group">
Enter Quantity 
<form:input path="quantity" class="form-control"/>
<form:errors path ="quantity" cssStyle="color:red"/>
</div>
<br>

<div class ="form-group">
Enter Description
<form:textarea path="description" class="form-control"/>
<form:errors path ="description" cssStyle="color:red"/>
</div>
<br>

<div class ="form-group">
Select Category
<c:forEach items="${categories }" var="c">
<form:radiobutton path="category.id" value="${c.id }" />${c.categoryName }

</c:forEach> 

<tr>
<td>Supplier:</td>
<td><form:select path="supplier.name" items ="${suppliers}" itemValue ="name" itemLabel ="name"></form:select>
</tr>
</div>

<!-- <div class="form-group">
Upload an image
<input type="file" name="image">
</div> -->

<div class ="form-group">
<input type ="submit" value ="Add Product">
</div>
</form:form> 
</body>
</html>

<%@ include file="footer.jsp" %>