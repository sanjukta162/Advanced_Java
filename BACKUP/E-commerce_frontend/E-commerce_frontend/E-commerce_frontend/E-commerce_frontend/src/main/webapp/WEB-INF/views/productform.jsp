<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

 
<%@ include file="header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
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