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

 <form:form action="saveproduct" modelAttribute="product">

<form:hidden path="id"/>


Enter Product Name <form:input path="productName"/><br>
Enter Price <form:input path="price"/><br>
Enter Quantity <form:input path="quantity"/><br>
Enter Description<form:textarea path="description"/><br>

<input type ="submit" value ="Add Product">
</form:form> 


</body>
</html>
<%@ include file="footer.jsp" %>