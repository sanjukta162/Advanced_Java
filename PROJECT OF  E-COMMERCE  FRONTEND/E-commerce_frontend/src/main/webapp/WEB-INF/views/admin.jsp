
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%@include file ="header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!-- Spring Form tag. -->
<!-- http://localhost:8080/E-commerce_frontend/saveproduct -->

 <form:form action="saveproduct"  method ="post" modelAttribute="product">
<%-- <div class ="form-group">
<form:hidden path="Id" class="form-control"/>
</div> --%>
<br>

<div class ="form-group">
Enter Product Name 
<form:input path="productName" class="form-control"/>
</div>
<br>
<div class ="form-group">
Enter Price 
<form:input path="price" class="form-control"/>

</div>
<br>
<div class ="form-group">
Enter Quantity 
<form:input path="quantity" class="form-control"/>

</div>
<br>

<div class ="form-group">
Enter Description
<form:textarea path="description" class="form-control"/>

</div>
<br>
<%-- <div class ="form-group">
Select Category
<c:forEach items="${categories }" var="c">
<form:radiobutton path="category.id" value="${c.id }" />${c.categoryName }

</c:forEach> --%>

<br>
<div class ="form-group">
<input type ="submit" value ="Add Product">
</div>
<br>
</form:form> 
<h3>List of Products</h3>

<c:if test="${not empty product}">
    <table class="userTable">
    <tr>
        <th width="160">Name</th>
        <th width="60">Qunaitity</th>
        <th width="80">price</th>
        <th width="60">Description</th>
         <th width="100">Action</th>
          <th width="100">Action</th>
    </tr>
    <c:forEach items="${product}" var="product">
        <tr>
         
            <td>${product.productName}</td>
            <td>
           ${product.quantity } </td>
            <td>${product.price}</td>
             <td>${product.description}</td>
           <td><a href="<c:url value='/edit/${product.id}'/>" >Edit</a></td>
            <td><a href="<c:url value='/remove/${product.id}'/>" >Delete</a></td>
            </td>
        </tr>
    </c:forEach>
    </table>
</c:if>
  
</body>
</html>