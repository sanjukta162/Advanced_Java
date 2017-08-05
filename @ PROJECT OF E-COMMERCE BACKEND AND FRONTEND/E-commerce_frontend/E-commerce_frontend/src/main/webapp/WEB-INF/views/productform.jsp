<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored ="false" %>



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

<br><br><br><br>
 <h1>
 Add Product
</h1>

<c:url var="addproduct" value="/newProduct" ></c:url>
<form:form action="${addproduct}" commandName="product" modelAttribute="product" method="post" >
<table>
    <c:if test="${!empty product.name}">
    
    <tr>
        <td>
            <form:label path="id">
                <spring:message text="ID"/>
            </form:label>
        </td>
        <td>
            <form:input path="id" readonly="true" size="8"  disabled="true" />
            <form:hidden path="id" />
        </td> 
    </tr>
    </c:if> 
     <tr>
        <td>
            <form:label path="name">
                  <spring:message text="name"/>
            </form:label>
        </td>
        <td> <form:input path="name" /></td>
         
      
    </tr>
  
    <tr>
        <td>
            <form:label path="price">
                <spring:message text="price"/>
            </form:label>
        </td>
        <td>
            <form:input path="price" />
        </td>
       
    </tr>
    
     <tr>
        <td>
            <form:label path="category">
                <spring:message text="category"/>
            </form:label>
        </td>
        <td>
            <form:input path="category" />
        </td>
       
    </tr>
    
  <tr>
        <td>
            <form:label path="supplier">
                <spring:message text="supplier"/>
            </form:label>
        </td>
        <td>
            <form:input path="supplier" />
        </td>
       
    </tr>
    
     <tr>
    <td>
            <form:label path="upload image">
                <!-- <spring:message text="upload image"/> -->
            </form:label>
        </td>
        <td>
            <form:input path="image" />
        </td>
       
    </tr> 
 <%--   </tr>--%>
    <tr>
        <td colspan="2">
            <c:if test="${!empty product.name}">
                <input type="submit"
                    value="<spring:message text="Edit Product"/>" />
            </c:if>
            <c:if test="${empty product.name}">
                <input type="submit"
                    value="<spring:message text="Add Product"/>" />
         </c:if>
        </td>
    </tr>
    
</table>  
</form:form>
<center><h3>List of Product</h3></center>

<c:if test="${not empty products}">
<div class="container">
<table class="table table-bordered">

<!-- <table class="table table-striped"> -->
<thead>
    <!-- <table class="userTable"> -->
    <!-- <tr> -->
     <tr class="info">
    
        <th width="160">Name</th>
       <th width="100">Price</th>
        <th width="100">Image</th> 
        <th width="100">Category</th>
         <th width="100">Supplier</th>
        <th width="100">Price</th>
        <th width="120">Action</th>
        <th width="140">Action</th>
       
    </tr>
    
    <c:forEach items="${products}" var="product">
        <tr>
         
            <td>${product.name}</td>
            <td>${product.price}</td>
           
            <td>${product.category}</td>
            <td>${product.category_id}</td>
            <td>${product.supplier}</td>
            <td>${product.supplier_id}</td>
            
       
             
       
           <td><a href="<c:url value='/editProduct/${product.id}'/>" >Edit</a></td>
            <td><a href="<c:url value='/deleteProduct/${product.id}'/>" >Delete</a></td>
          
        </tr>
    </c:forEach>
    </thead>
   
    </table>
    </div>
</c:if>

  
</body>
<%@ include file="footer.jsp" %>
</html>
<%-- <body>

<!-- Spring Form tag. -->
<!-- http://localhost:8080/E-commerce_frontend/saveproduct -->

<c:url value ="/saveproduct" var="urL"></c:url>
<form:form  action ="${url }"  modelAttribute ="product">
<div class="form-group">

<form:form action="/saveproduct" method ="post" modelAttribute="product"
 
<div class ="form-group">
<form:hidden path="id" class="form-control"/>
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

<%@ include file="footer.jsp" %> --%>