<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file="AdminHome.jsp" %>

</head>
<body>
<br>
<br>
<br>
<br>
<br>
<br>
<br>



<br>
<br>	
<div class ="container">
<table class ="table table-bordered" >
<tr>
<th>Supplier ID</th>
<th>Supplier Name</th>
<th>Supplier Address</th>

</tr>
<c:forEach var="supplier" items="${suppliers}">
<tr>
<td>${supplier.id}</td>
<td>${supplier.name}</td>
<td>${supplier.address}</td>

<td align="center"><a href="editSupplier?id=${supplier.id}" class ="btn btn-primary">Edit</a> | <a href="deleteSupplier?id=${supplier.id}" class ="btn btn-warning">Delete</a></td>
</tr>

</c:forEach>

</table>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<br>
<br>
<br>
<br>
<br>
<br>
<br>


<%@ include file="footer.jsp" %>

</body>
</html>